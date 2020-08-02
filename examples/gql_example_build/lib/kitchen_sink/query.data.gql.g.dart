// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GQueryOperationData> _$gQueryOperationDataSerializer =
    new _$GQueryOperationDataSerializer();
Serializer<GQueryOperationData_field> _$gQueryOperationDataFieldSerializer =
    new _$GQueryOperationData_fieldSerializer();
Serializer<GQueryOperationData_field_field>
    _$gQueryOperationDataFieldFieldSerializer =
    new _$GQueryOperationData_field_fieldSerializer();
Serializer<GQueryOperationData_field_fieldRequired>
    _$gQueryOperationDataFieldFieldRequiredSerializer =
    new _$GQueryOperationData_field_fieldRequiredSerializer();

class _$GQueryOperationDataSerializer
    implements StructuredSerializer<GQueryOperationData> {
  @override
  final Iterable<Type> types = const [
    GQueryOperationData,
    _$GQueryOperationData
  ];
  @override
  final String wireName = 'GQueryOperationData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GQueryOperationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.field != null) {
      result
        ..add('field')
        ..add(serializers.serialize(object.field,
            specifiedType: const FullType(GQueryOperationData_field)));
    }
    return result;
  }

  @override
  GQueryOperationData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GQueryOperationDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'field':
          result.field.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GQueryOperationData_field))
              as GQueryOperationData_field);
          break;
      }
    }

    return result.build();
  }
}

class _$GQueryOperationData_fieldSerializer
    implements StructuredSerializer<GQueryOperationData_field> {
  @override
  final Iterable<Type> types = const [
    GQueryOperationData_field,
    _$GQueryOperationData_field
  ];
  @override
  final String wireName = 'GQueryOperationData_field';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GQueryOperationData_field object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'idRequired',
      serializers.serialize(object.idRequired,
          specifiedType: const FullType(String)),
      'boolRequired',
      serializers.serialize(object.boolRequired,
          specifiedType: const FullType(bool)),
      'intRequired',
      serializers.serialize(object.intRequired,
          specifiedType: const FullType(int)),
      'floatRequired',
      serializers.serialize(object.floatRequired,
          specifiedType: const FullType(double)),
      'stringRequired',
      serializers.serialize(object.stringRequired,
          specifiedType: const FullType(String)),
      'scalarRequired',
      serializers.serialize(object.scalarRequired,
          specifiedType: const FullType(_i2.GScalar)),
      'enumRequired',
      serializers.serialize(object.enumRequired,
          specifiedType: const FullType(_i2.GEnum)),
      'fieldRequired',
      serializers.serialize(object.fieldRequired,
          specifiedType:
              const FullType(GQueryOperationData_field_fieldRequired)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.bool$ != null) {
      result
        ..add('bool')
        ..add(serializers.serialize(object.bool$,
            specifiedType: const FullType(bool)));
    }
    if (object.int$ != null) {
      result
        ..add('int')
        ..add(serializers.serialize(object.int$,
            specifiedType: const FullType(int)));
    }
    if (object.float != null) {
      result
        ..add('float')
        ..add(serializers.serialize(object.float,
            specifiedType: const FullType(double)));
    }
    if (object.string != null) {
      result
        ..add('string')
        ..add(serializers.serialize(object.string,
            specifiedType: const FullType(String)));
    }
    if (object.scalar != null) {
      result
        ..add('scalar')
        ..add(serializers.serialize(object.scalar,
            specifiedType: const FullType(_i2.GScalar)));
    }
    if (object.enum$ != null) {
      result
        ..add('enum')
        ..add(serializers.serialize(object.enum$,
            specifiedType: const FullType(_i2.GEnum)));
    }
    if (object.field != null) {
      result
        ..add('field')
        ..add(serializers.serialize(object.field,
            specifiedType: const FullType(GQueryOperationData_field_field)));
    }
    return result;
  }

  @override
  GQueryOperationData_field deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GQueryOperationData_fieldBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bool':
          result.bool$ = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'int':
          result.int$ = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'float':
          result.float = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'string':
          result.string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scalar':
          result.scalar.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GScalar)) as _i2.GScalar);
          break;
        case 'enum':
          result.enum$ = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GEnum)) as _i2.GEnum;
          break;
        case 'field':
          result.field.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GQueryOperationData_field_field))
              as GQueryOperationData_field_field);
          break;
        case 'idRequired':
          result.idRequired = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'boolRequired':
          result.boolRequired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'intRequired':
          result.intRequired = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'floatRequired':
          result.floatRequired = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'stringRequired':
          result.stringRequired = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scalarRequired':
          result.scalarRequired.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GScalar)) as _i2.GScalar);
          break;
        case 'enumRequired':
          result.enumRequired = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GEnum)) as _i2.GEnum;
          break;
        case 'fieldRequired':
          result.fieldRequired.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GQueryOperationData_field_fieldRequired))
              as GQueryOperationData_field_fieldRequired);
          break;
      }
    }

    return result.build();
  }
}

class _$GQueryOperationData_field_fieldSerializer
    implements StructuredSerializer<GQueryOperationData_field_field> {
  @override
  final Iterable<Type> types = const [
    GQueryOperationData_field_field,
    _$GQueryOperationData_field_field
  ];
  @override
  final String wireName = 'GQueryOperationData_field_field';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GQueryOperationData_field_field object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GQueryOperationData_field_field deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GQueryOperationData_field_fieldBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GQueryOperationData_field_fieldRequiredSerializer
    implements StructuredSerializer<GQueryOperationData_field_fieldRequired> {
  @override
  final Iterable<Type> types = const [
    GQueryOperationData_field_fieldRequired,
    _$GQueryOperationData_field_fieldRequired
  ];
  @override
  final String wireName = 'GQueryOperationData_field_fieldRequired';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GQueryOperationData_field_fieldRequired object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GQueryOperationData_field_fieldRequired deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GQueryOperationData_field_fieldRequiredBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GQueryOperationData extends GQueryOperationData {
  @override
  final GQueryOperationData_field field;

  factory _$GQueryOperationData(
          [void Function(GQueryOperationDataBuilder) updates]) =>
      (new GQueryOperationDataBuilder()..update(updates)).build();

  _$GQueryOperationData._({this.field}) : super._();

  @override
  GQueryOperationData rebuild(
          void Function(GQueryOperationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GQueryOperationDataBuilder toBuilder() =>
      new GQueryOperationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GQueryOperationData && field == other.field;
  }

  @override
  int get hashCode {
    return $jf($jc(0, field.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GQueryOperationData')
          ..add('field', field))
        .toString();
  }
}

class GQueryOperationDataBuilder
    implements Builder<GQueryOperationData, GQueryOperationDataBuilder> {
  _$GQueryOperationData _$v;

  GQueryOperationData_fieldBuilder _field;
  GQueryOperationData_fieldBuilder get field =>
      _$this._field ??= new GQueryOperationData_fieldBuilder();
  set field(GQueryOperationData_fieldBuilder field) => _$this._field = field;

  GQueryOperationDataBuilder();

  GQueryOperationDataBuilder get _$this {
    if (_$v != null) {
      _field = _$v.field?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GQueryOperationData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GQueryOperationData;
  }

  @override
  void update(void Function(GQueryOperationDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GQueryOperationData build() {
    _$GQueryOperationData _$result;
    try {
      _$result = _$v ?? new _$GQueryOperationData._(field: _field?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'field';
        _field?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GQueryOperationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GQueryOperationData_field extends GQueryOperationData_field {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final bool bool$;
  @override
  final int int$;
  @override
  final double float;
  @override
  final String string;
  @override
  final _i2.GScalar scalar;
  @override
  final _i2.GEnum enum$;
  @override
  final GQueryOperationData_field_field field;
  @override
  final String idRequired;
  @override
  final bool boolRequired;
  @override
  final int intRequired;
  @override
  final double floatRequired;
  @override
  final String stringRequired;
  @override
  final _i2.GScalar scalarRequired;
  @override
  final _i2.GEnum enumRequired;
  @override
  final GQueryOperationData_field_fieldRequired fieldRequired;

  factory _$GQueryOperationData_field(
          [void Function(GQueryOperationData_fieldBuilder) updates]) =>
      (new GQueryOperationData_fieldBuilder()..update(updates)).build();

  _$GQueryOperationData_field._(
      {this.G__typename,
      this.id,
      this.bool$,
      this.int$,
      this.float,
      this.string,
      this.scalar,
      this.enum$,
      this.field,
      this.idRequired,
      this.boolRequired,
      this.intRequired,
      this.floatRequired,
      this.stringRequired,
      this.scalarRequired,
      this.enumRequired,
      this.fieldRequired})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field', 'G__typename');
    }
    if (idRequired == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field', 'idRequired');
    }
    if (boolRequired == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field', 'boolRequired');
    }
    if (intRequired == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field', 'intRequired');
    }
    if (floatRequired == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field', 'floatRequired');
    }
    if (stringRequired == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field', 'stringRequired');
    }
    if (scalarRequired == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field', 'scalarRequired');
    }
    if (enumRequired == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field', 'enumRequired');
    }
    if (fieldRequired == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field', 'fieldRequired');
    }
  }

  @override
  GQueryOperationData_field rebuild(
          void Function(GQueryOperationData_fieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GQueryOperationData_fieldBuilder toBuilder() =>
      new GQueryOperationData_fieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GQueryOperationData_field &&
        G__typename == other.G__typename &&
        id == other.id &&
        bool$ == other.bool$ &&
        int$ == other.int$ &&
        float == other.float &&
        string == other.string &&
        scalar == other.scalar &&
        enum$ == other.enum$ &&
        field == other.field &&
        idRequired == other.idRequired &&
        boolRequired == other.boolRequired &&
        intRequired == other.intRequired &&
        floatRequired == other.floatRequired &&
        stringRequired == other.stringRequired &&
        scalarRequired == other.scalarRequired &&
        enumRequired == other.enumRequired &&
        fieldRequired == other.fieldRequired;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        G__typename
                                                                            .hashCode),
                                                                    id.hashCode),
                                                                bool$.hashCode),
                                                            int$.hashCode),
                                                        float.hashCode),
                                                    string.hashCode),
                                                scalar.hashCode),
                                            enum$.hashCode),
                                        field.hashCode),
                                    idRequired.hashCode),
                                boolRequired.hashCode),
                            intRequired.hashCode),
                        floatRequired.hashCode),
                    stringRequired.hashCode),
                scalarRequired.hashCode),
            enumRequired.hashCode),
        fieldRequired.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GQueryOperationData_field')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('bool\$', bool$)
          ..add('int\$', int$)
          ..add('float', float)
          ..add('string', string)
          ..add('scalar', scalar)
          ..add('enum\$', enum$)
          ..add('field', field)
          ..add('idRequired', idRequired)
          ..add('boolRequired', boolRequired)
          ..add('intRequired', intRequired)
          ..add('floatRequired', floatRequired)
          ..add('stringRequired', stringRequired)
          ..add('scalarRequired', scalarRequired)
          ..add('enumRequired', enumRequired)
          ..add('fieldRequired', fieldRequired))
        .toString();
  }
}

class GQueryOperationData_fieldBuilder
    implements
        Builder<GQueryOperationData_field, GQueryOperationData_fieldBuilder> {
  _$GQueryOperationData_field _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _bool$;
  bool get bool$ => _$this._bool$;
  set bool$(bool bool$) => _$this._bool$ = bool$;

  int _int$;
  int get int$ => _$this._int$;
  set int$(int int$) => _$this._int$ = int$;

  double _float;
  double get float => _$this._float;
  set float(double float) => _$this._float = float;

  String _string;
  String get string => _$this._string;
  set string(String string) => _$this._string = string;

  _i2.GScalarBuilder _scalar;
  _i2.GScalarBuilder get scalar => _$this._scalar ??= new _i2.GScalarBuilder();
  set scalar(_i2.GScalarBuilder scalar) => _$this._scalar = scalar;

  _i2.GEnum _enum$;
  _i2.GEnum get enum$ => _$this._enum$;
  set enum$(_i2.GEnum enum$) => _$this._enum$ = enum$;

  GQueryOperationData_field_fieldBuilder _field;
  GQueryOperationData_field_fieldBuilder get field =>
      _$this._field ??= new GQueryOperationData_field_fieldBuilder();
  set field(GQueryOperationData_field_fieldBuilder field) =>
      _$this._field = field;

  String _idRequired;
  String get idRequired => _$this._idRequired;
  set idRequired(String idRequired) => _$this._idRequired = idRequired;

  bool _boolRequired;
  bool get boolRequired => _$this._boolRequired;
  set boolRequired(bool boolRequired) => _$this._boolRequired = boolRequired;

  int _intRequired;
  int get intRequired => _$this._intRequired;
  set intRequired(int intRequired) => _$this._intRequired = intRequired;

  double _floatRequired;
  double get floatRequired => _$this._floatRequired;
  set floatRequired(double floatRequired) =>
      _$this._floatRequired = floatRequired;

  String _stringRequired;
  String get stringRequired => _$this._stringRequired;
  set stringRequired(String stringRequired) =>
      _$this._stringRequired = stringRequired;

  _i2.GScalarBuilder _scalarRequired;
  _i2.GScalarBuilder get scalarRequired =>
      _$this._scalarRequired ??= new _i2.GScalarBuilder();
  set scalarRequired(_i2.GScalarBuilder scalarRequired) =>
      _$this._scalarRequired = scalarRequired;

  _i2.GEnum _enumRequired;
  _i2.GEnum get enumRequired => _$this._enumRequired;
  set enumRequired(_i2.GEnum enumRequired) =>
      _$this._enumRequired = enumRequired;

  GQueryOperationData_field_fieldRequiredBuilder _fieldRequired;
  GQueryOperationData_field_fieldRequiredBuilder get fieldRequired =>
      _$this._fieldRequired ??=
          new GQueryOperationData_field_fieldRequiredBuilder();
  set fieldRequired(
          GQueryOperationData_field_fieldRequiredBuilder fieldRequired) =>
      _$this._fieldRequired = fieldRequired;

  GQueryOperationData_fieldBuilder() {
    GQueryOperationData_field._initializeBuilder(this);
  }

  GQueryOperationData_fieldBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _id = _$v.id;
      _bool$ = _$v.bool$;
      _int$ = _$v.int$;
      _float = _$v.float;
      _string = _$v.string;
      _scalar = _$v.scalar?.toBuilder();
      _enum$ = _$v.enum$;
      _field = _$v.field?.toBuilder();
      _idRequired = _$v.idRequired;
      _boolRequired = _$v.boolRequired;
      _intRequired = _$v.intRequired;
      _floatRequired = _$v.floatRequired;
      _stringRequired = _$v.stringRequired;
      _scalarRequired = _$v.scalarRequired?.toBuilder();
      _enumRequired = _$v.enumRequired;
      _fieldRequired = _$v.fieldRequired?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GQueryOperationData_field other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GQueryOperationData_field;
  }

  @override
  void update(void Function(GQueryOperationData_fieldBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GQueryOperationData_field build() {
    _$GQueryOperationData_field _$result;
    try {
      _$result = _$v ??
          new _$GQueryOperationData_field._(
              G__typename: G__typename,
              id: id,
              bool$: bool$,
              int$: int$,
              float: float,
              string: string,
              scalar: _scalar?.build(),
              enum$: enum$,
              field: _field?.build(),
              idRequired: idRequired,
              boolRequired: boolRequired,
              intRequired: intRequired,
              floatRequired: floatRequired,
              stringRequired: stringRequired,
              scalarRequired: scalarRequired.build(),
              enumRequired: enumRequired,
              fieldRequired: fieldRequired.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scalar';
        _scalar?.build();

        _$failedField = 'field';
        _field?.build();

        _$failedField = 'scalarRequired';
        scalarRequired.build();

        _$failedField = 'fieldRequired';
        fieldRequired.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GQueryOperationData_field', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GQueryOperationData_field_field
    extends GQueryOperationData_field_field {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GQueryOperationData_field_field(
          [void Function(GQueryOperationData_field_fieldBuilder) updates]) =>
      (new GQueryOperationData_field_fieldBuilder()..update(updates)).build();

  _$GQueryOperationData_field_field._({this.G__typename, this.id}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field_field', 'G__typename');
    }
  }

  @override
  GQueryOperationData_field_field rebuild(
          void Function(GQueryOperationData_field_fieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GQueryOperationData_field_fieldBuilder toBuilder() =>
      new GQueryOperationData_field_fieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GQueryOperationData_field_field &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GQueryOperationData_field_field')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GQueryOperationData_field_fieldBuilder
    implements
        Builder<GQueryOperationData_field_field,
            GQueryOperationData_field_fieldBuilder> {
  _$GQueryOperationData_field_field _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  GQueryOperationData_field_fieldBuilder() {
    GQueryOperationData_field_field._initializeBuilder(this);
  }

  GQueryOperationData_field_fieldBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GQueryOperationData_field_field other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GQueryOperationData_field_field;
  }

  @override
  void update(void Function(GQueryOperationData_field_fieldBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GQueryOperationData_field_field build() {
    final _$result = _$v ??
        new _$GQueryOperationData_field_field._(
            G__typename: G__typename, id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GQueryOperationData_field_fieldRequired
    extends GQueryOperationData_field_fieldRequired {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GQueryOperationData_field_fieldRequired(
          [void Function(GQueryOperationData_field_fieldRequiredBuilder)
              updates]) =>
      (new GQueryOperationData_field_fieldRequiredBuilder()..update(updates))
          .build();

  _$GQueryOperationData_field_fieldRequired._({this.G__typename, this.id})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GQueryOperationData_field_fieldRequired', 'G__typename');
    }
  }

  @override
  GQueryOperationData_field_fieldRequired rebuild(
          void Function(GQueryOperationData_field_fieldRequiredBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GQueryOperationData_field_fieldRequiredBuilder toBuilder() =>
      new GQueryOperationData_field_fieldRequiredBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GQueryOperationData_field_fieldRequired &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GQueryOperationData_field_fieldRequired')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GQueryOperationData_field_fieldRequiredBuilder
    implements
        Builder<GQueryOperationData_field_fieldRequired,
            GQueryOperationData_field_fieldRequiredBuilder> {
  _$GQueryOperationData_field_fieldRequired _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  GQueryOperationData_field_fieldRequiredBuilder() {
    GQueryOperationData_field_fieldRequired._initializeBuilder(this);
  }

  GQueryOperationData_field_fieldRequiredBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GQueryOperationData_field_fieldRequired other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GQueryOperationData_field_fieldRequired;
  }

  @override
  void update(
      void Function(GQueryOperationData_field_fieldRequiredBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GQueryOperationData_field_fieldRequired build() {
    final _$result = _$v ??
        new _$GQueryOperationData_field_fieldRequired._(
            G__typename: G__typename, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
