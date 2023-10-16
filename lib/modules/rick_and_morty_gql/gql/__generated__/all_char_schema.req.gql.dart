// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:proto_app/__generated__/serializers.gql.dart' as _i6;
import 'package:proto_app/modules/rick_and_morty_gql/gql/__generated__/all_char_schema.ast.gql.dart'
    as _i5;
import 'package:proto_app/modules/rick_and_morty_gql/gql/__generated__/all_char_schema.data.gql.dart'
    as _i2;
import 'package:proto_app/modules/rick_and_morty_gql/gql/__generated__/all_char_schema.var.gql.dart'
    as _i3;

part 'all_char_schema.req.gql.g.dart';

abstract class GAllCharactersReq
    implements
        Built<GAllCharactersReq, GAllCharactersReqBuilder>,
        _i1.OperationRequest<_i2.GAllCharactersData, _i3.GAllCharactersVars> {
  GAllCharactersReq._();

  factory GAllCharactersReq([Function(GAllCharactersReqBuilder b) updates]) =
      _$GAllCharactersReq;

  static void _initializeBuilder(GAllCharactersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AllCharacters',
    )
    ..executeOnListen = true;

  @override
  _i3.GAllCharactersVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GAllCharactersData? Function(
    _i2.GAllCharactersData?,
    _i2.GAllCharactersData?,
  )? get updateResult;
  @override
  _i2.GAllCharactersData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GAllCharactersData? parseData(Map<String, dynamic> json) =>
      _i2.GAllCharactersData.fromJson(json);

  static Serializer<GAllCharactersReq> get serializer =>
      _$gAllCharactersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAllCharactersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllCharactersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAllCharactersReq.serializer,
        json,
      );
}
