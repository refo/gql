// ignore_for_file: prefer_constructors_over_static_methods
// Contents:
// * FieldDefinition
// * ScalarTypeDefinition
// * InputValueDefinition
// * EnumTypeDefinition
// * EnumValueDefinition
// * InputObjectTypeDefinition
// * DirectiveDefinition
// * InterfaceTypeDefinition
// * ObjectTypeDefinition
// * UnionTypeDefinition
import "package:gql/src/schema/defaults.dart";
import "package:meta/meta.dart";
import "package:gql/ast.dart";
import "package:gql/language.dart";

part "base_types.dart";
part "value_types.dart";
part "type_resolver.dart";

extension WithTypeName on OperationType {
  String get name {
    switch (this) {
      case OperationType.query:
        return "query";
      case OperationType.mutation:
        return "mutation";
      case OperationType.subscription:
        return "subscription";
    }
    throw StateError("Impossible OperationType $this");
  }
}

/*
  Begin [TypeResolver]-enabled classes
*/

/// A [field](https://spec.graphql.org/June2018/#sec-Language.Fields)
/// describes one discrete piece of information available to request within a selection set.
///
/// Some fields describe complex data or relationships to other data.
/// In order to further explore this data, a field may itself contain a selection set,
/// allowing for deeply nested requests.
///
/// All GraphQL operations must specify their selections down to fields which return scalar values
/// to ensure an unambiguously shaped response.
@immutable
class FieldDefinition extends GraphQLEntity implements TypeResolver {
  const FieldDefinition(
    this.astNode, [
    ResolveType getType,
    bool isOverride,
  ])  : getType = getType ?? TypeResolver.withoutContext,
        isOverride = isOverride ?? false;

  @override
  final ResolveType getType;

  final bool isOverride;

  @override
  final FieldDefinitionNode astNode;

  String get name => astNode.name.value;

  String get description => astNode.description?.value;

  GraphQLType get type => GraphQLType.fromNode(astNode.type, getType);

  List<Directive> get directives =>
      astNode.directives.map(Directive.fromNode).toList();

  List<InputValueDefinition> get args =>
      astNode.args.map(InputValueDefinition.fromNode).toList();

  static FieldDefinition fromNode(FieldDefinitionNode astNode,
          [ResolveType getType]) =>
      FieldDefinition(astNode, getType);
}

/// [InterfaceTypeDefinition] and [ObjectTypeDefinition] both have field sets
@immutable
abstract class TypeDefinitionWithFieldSet extends TypeDefinition
    implements TypeResolver {
  const TypeDefinitionWithFieldSet([
    ResolveType getType,
  ])  : getType = getType ?? TypeResolver.withoutContext,
        super();

  @override
  final ResolveType getType;

  List<FieldDefinition> get fields;

  List<FieldDefinition> get _fields => [typeNameField, ...fields];

  FieldDefinition getField(String fieldName);
}

/// [Interfaces](https://spec.graphql.org/June2018/#InterfaceTypeDefinition)
/// represent a list of named fields and their arguments.
///
/// objects ([ObjectTypeDefinition]) can then implement these interfaces,
/// which requires that the object type will define all fields defined by those interfaces.
///
/// See [TypeDefinition] for details on all GraphQL Type Definitions
@immutable
class InterfaceTypeDefinition extends TypeDefinitionWithFieldSet
    with AbstractType {
  const InterfaceTypeDefinition(
    this.astNode, [
    ResolveType getType,
  ]) : super(getType);

  @override
  List<FieldDefinition> get fields =>
      astNode.fields.map((field) => FieldDefinition(field, getType)).toList();

  @override
  FieldDefinition getField(String fieldName) => _fields.firstWhere(
        (field) => field.name == fieldName,
        orElse: () => throw StateError(
          "No such field $fieldName on $this",
        ),
      );

  @override
  final InterfaceTypeDefinitionNode astNode;

  bool isImplementedBy(ObjectTypeDefinition objectType) =>
      objectType.interfaceNames.contains(name);

  static InterfaceTypeDefinition fromNode(InterfaceTypeDefinitionNode astNode,
          [ResolveType getType]) =>
      InterfaceTypeDefinition(astNode, getType);
}

/// [Definition for a GraphQL Object](https://spec.graphql.org/June2018/#ObjectTypeDefinition),
/// which represents a list of named fields, each of which yield a value of a specific type.
///
/// GraphQL queries are hierarchical and composed, describing a tree of information.
/// While Scalar types describe the leaf values of these hierarchical queries,
/// Objects describe the intermediate levels.
///
/// Object values should be serialized as ordered maps,
/// where the queried field names (or aliases)
/// are the keys and the result of evaluating the field is the value,
/// ordered by the order in which they appear in the query.
///
/// See [TypeDefinition] for details on all GraphQL Type Definitions
@immutable
class ObjectTypeDefinition extends TypeDefinitionWithFieldSet {
  const ObjectTypeDefinition(
    this.astNode, [
    ResolveType getType,
  ]) : super(getType);

  @override
  final ObjectTypeDefinitionNode astNode;

  @override
  List<FieldDefinition> get fields {
    final inherited = _inheritedFieldNames;
    return astNode.fields
        .map((fieldNode) => FieldDefinition(
              fieldNode,
              getType,
              inherited.contains(fieldNode.name.value),
            ))
        .toList();
  }

  @override
  FieldDefinition getField(String fieldName) => _fields.firstWhere(
        (field) => field.name == fieldName,
        orElse: () => throw StateError(
          "No such field $fieldName on $this",
        ),
      );

  List<NamedType> get interfaceNames => astNode.interfaces
      .map((name) => NamedType.fromNode(name, getType))
      .toList();

  List<InterfaceTypeDefinition> get interfaces => interfaceNames
      .map((i) => getType(i.name) as InterfaceTypeDefinition)
      .toList();

  /// Extract all inherited interface names recursively
  Set<String> get _inheritedFieldNames => interfaces
      .expand(
        (face) => face._fields.map((f) => f.name),
      )
      .toSet();

  static ObjectTypeDefinition fromNode(
    ObjectTypeDefinitionNode astNode, [
    ResolveType getType,
  ]) =>
      ObjectTypeDefinition(astNode, getType);
}

/// [Unions](https://spec.graphql.org/June2018/#UnionTypeDefinition)
/// represent an object that could be one of a list of GraphQL Object types ([ObjectTypeDefinition]),
/// but provides for no guaranteed fields between those types.
///
/// They also differ from interfaces in that Object types declare what interfaces they implement,
/// but are not aware of what unions contain them.
///
/// See [TypeDefinition] for details on all GraphQL Type Definitions
@immutable
class UnionTypeDefinition extends TypeDefinition
    with AbstractType
    implements TypeResolver {
  const UnionTypeDefinition(
    this.astNode, [
    ResolveType getType,
  ]) : getType = getType ?? TypeResolver.withoutContext;

  @override
  final ResolveType getType;

  @override
  final UnionTypeDefinitionNode astNode;

  List<NamedType> get typeNames =>
      astNode.types.map((name) => NamedType.fromNode(name, getType)).toList();

  Iterable<String> get _typeNames => typeNames.map((t) => t.name);

  /// http://spec.graphql.org/draft/#sel-HAHdfFDABABlG3ib:
  /// > The member types of a Union type must all be Object base types;
  /// > Scalar, Interface and Union types must not be member types of a Union.
  /// > Similarly, wrapping types must not be member types of a Union.
  List<ObjectTypeDefinition> get types =>
      _typeNames.map(getType).cast<ObjectTypeDefinition>().toList();

  static UnionTypeDefinition fromNode(
    UnionTypeDefinitionNode astNode, [
    ResolveType getType,
  ]) =>
      UnionTypeDefinition(astNode, getType);
}

/*
  Begin simple/dumb classes
*/

/// [Scalaar types](https://spec.graphql.org/June2018/#ScalarTypeDefinition)
/// represent primitive leaf values in a GraphQL type system.
///
/// GraphQL responses take the form of a hierarchical tree;
/// the leaves on these trees are GraphQL scalars.
///
/// See [TypeDefinition] for details on all GraphQL Type Definitions
@immutable
class ScalarTypeDefinition extends TypeDefinition {
  const ScalarTypeDefinition(this.astNode);

  @override
  final ScalarTypeDefinitionNode astNode;

  static ScalarTypeDefinition fromNode(ScalarTypeDefinitionNode astNode) =>
      ScalarTypeDefinition(astNode);
}

/// Field and directive arguments accept [input values](https://spec.graphql.org/June2018/#sec-Input-Values)
/// of various literal primitives; input values can be scalars, enumeration values, lists, or input objects.
@immutable
class InputValueDefinition extends GraphQLEntity {
  const InputValueDefinition(this.astNode);

  @override
  final InputValueDefinitionNode astNode;

  String get name => astNode.name.value;

  String get description => astNode.description?.value;

  GraphQLType get type => GraphQLType.fromNode(astNode.type);

  Value get defaultValue => Value.fromNode(astNode.defaultValue);

  List<Directive> get directives =>
      astNode.directives.map(Directive.fromNode).toList();

  static InputValueDefinition fromNode(InputValueDefinitionNode astNode) =>
      InputValueDefinition(astNode);
}

/// [Enum types](https://spec.graphql.org/June2018/#EnumTypeDefinition) describe the set of possible values.
///
/// Enum types, like scalar types, also represent leaf values in a GraphQL type system.
///
/// Enums are not references for a numeric value, but are unique values in their own right.
/// They may serialize as a string: the name of the represented value.
///
/// See [TypeDefinition] for details on all GraphQL Type Definitions
@immutable
class EnumTypeDefinition extends TypeDefinition {
  const EnumTypeDefinition(this.astNode);

  @override
  final EnumTypeDefinitionNode astNode;

  List<EnumValueDefinition> get values =>
      astNode.values.map(EnumValueDefinition.fromNode).toList();

  static EnumTypeDefinition fromNode(EnumTypeDefinitionNode astNode) =>
      EnumTypeDefinition(astNode);
}

/// The literal value of an [EnumTypeDefinition]
@immutable
class EnumValueDefinition extends TypeDefinition {
  const EnumValueDefinition(this.astNode);

  @override
  final EnumValueDefinitionNode astNode;

  static EnumValueDefinition fromNode(EnumValueDefinitionNode astNode) =>
      EnumValueDefinition(astNode);
}

/// An [Input Object Type Definition](https://spec.graphql.org/June2018/#InputObjectTypeDefinition)
///
/// A GraphQL Input Object defines a set of input fields;
/// the input fields are either scalars, enums, or other input objects.
/// This allows arguments to accept arbitrarily complex structs.
///
/// See [TypeDefinition] for details on all GraphQL Type Definitions
@immutable
class InputObjectTypeDefinition extends TypeDefinition {
  const InputObjectTypeDefinition(this.astNode);

  @override
  final InputObjectTypeDefinitionNode astNode;

  List<InputValueDefinition> get fields =>
      astNode.fields.map(InputValueDefinition.fromNode).toList();

  static InputObjectTypeDefinition fromNode(
          InputObjectTypeDefinitionNode astNode) =>
      InputObjectTypeDefinition(astNode);
}

/// [Directives](https://spec.graphql.org/June2018/#sec-Type-System.Directives)
/// are used to annotate various parts of a GraphQL document
/// as an indicator that they should be evaluated differently by
/// a validator, executor, or client tool such as a code generator.
@immutable
class DirectiveDefinition extends TypeSystemDefinition {
  const DirectiveDefinition(this.astNode);

  @override
  final DirectiveDefinitionNode astNode;

  String get description => astNode.description?.value;

  List<InputValueDefinition> get args =>
      astNode.args.map(InputValueDefinition.fromNode).toList();

  List<DirectiveLocation> get locations => astNode.locations;

  bool get repeatable => astNode.repeatable;

  static DirectiveDefinition fromNode(DirectiveDefinitionNode astNode) =>
      DirectiveDefinition(astNode);
}

/// There are three types of [operations]((https://spec.graphql.org/June2018/#sec-Language.Operations)):
/// * `query` – a read‐only fetch.
/// * `mutation` – a write followed by a fetch.
/// * `subscription` – a long‐lived request that fetches data in response to source events.
@immutable
class OperationTypeDefinition extends GraphQLEntity {
  const OperationTypeDefinition(this.astNode);

  @override
  final OperationTypeDefinitionNode astNode;

  OperationType get operation => astNode.operation;

  NamedType get type => NamedType.fromNode(astNode.type);

  static OperationTypeDefinition fromNode(
          OperationTypeDefinitionNode astNode) =>
      OperationTypeDefinition(astNode);
}
