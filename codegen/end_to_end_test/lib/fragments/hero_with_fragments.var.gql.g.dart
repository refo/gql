// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_with_fragments.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GHeroWithFragmentsVars> _$gHeroWithFragmentsVarsSerializer =
    new _$GHeroWithFragmentsVarsSerializer();

class _$GHeroWithFragmentsVarsSerializer
    implements StructuredSerializer<GHeroWithFragmentsVars> {
  @override
  final Iterable<Type> types = const [
    GHeroWithFragmentsVars,
    _$GHeroWithFragmentsVars
  ];
  @override
  final String wireName = 'GHeroWithFragmentsVars';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GHeroWithFragmentsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.first != null) {
      result
        ..add('first')
        ..add(serializers.serialize(object.first,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GHeroWithFragmentsVars deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHeroWithFragmentsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GHeroWithFragmentsVars extends GHeroWithFragmentsVars {
  @override
  final int first;

  factory _$GHeroWithFragmentsVars(
          [void Function(GHeroWithFragmentsVarsBuilder) updates]) =>
      (new GHeroWithFragmentsVarsBuilder()..update(updates)).build();

  _$GHeroWithFragmentsVars._({this.first}) : super._();

  @override
  GHeroWithFragmentsVars rebuild(
          void Function(GHeroWithFragmentsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHeroWithFragmentsVarsBuilder toBuilder() =>
      new GHeroWithFragmentsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHeroWithFragmentsVars && first == other.first;
  }

  @override
  int get hashCode {
    return $jf($jc(0, first.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GHeroWithFragmentsVars')
          ..add('first', first))
        .toString();
  }
}

class GHeroWithFragmentsVarsBuilder
    implements Builder<GHeroWithFragmentsVars, GHeroWithFragmentsVarsBuilder> {
  _$GHeroWithFragmentsVars _$v;

  int _first;
  int get first => _$this._first;
  set first(int first) => _$this._first = first;

  GHeroWithFragmentsVarsBuilder();

  GHeroWithFragmentsVarsBuilder get _$this {
    if (_$v != null) {
      _first = _$v.first;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHeroWithFragmentsVars other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GHeroWithFragmentsVars;
  }

  @override
  void update(void Function(GHeroWithFragmentsVarsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHeroWithFragmentsVars build() {
    final _$result = _$v ?? new _$GHeroWithFragmentsVars._(first: first);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
