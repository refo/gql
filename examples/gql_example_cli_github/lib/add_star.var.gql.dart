// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_example_cli_github/serializers.gql.dart' as _i1;

part 'add_star.var.gql.g.dart';

abstract class GAddStarVars
    implements Built<GAddStarVars, GAddStarVarsBuilder> {
  GAddStarVars._();

  factory GAddStarVars([Function(GAddStarVarsBuilder b) updates]) =
      _$GAddStarVars;

  String get starrableId;
  static Serializer<GAddStarVars> get serializer => _$gAddStarVarsSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GAddStarVars.serializer, this);
  static GAddStarVars fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAddStarVars.serializer, json);
}
