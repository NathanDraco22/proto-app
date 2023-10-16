// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:proto_app/__generated__/schema-utf8.schema.gql.dart'
    show
        GCacheControlScope,
        GFilterCharacter,
        GFilterEpisode,
        GFilterLocation,
        GUpload;
import 'package:proto_app/modules/rick_and_morty_gql/gql/__generated__/all_char_schema.data.gql.dart'
    show
        GAllCharactersData,
        GAllCharactersData_characters,
        GAllCharactersData_characters_results;
import 'package:proto_app/modules/rick_and_morty_gql/gql/__generated__/all_char_schema.req.gql.dart'
    show GAllCharactersReq;
import 'package:proto_app/modules/rick_and_morty_gql/gql/__generated__/all_char_schema.var.gql.dart'
    show GAllCharactersVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAllCharactersData,
  GAllCharactersData_characters,
  GAllCharactersData_characters_results,
  GAllCharactersReq,
  GAllCharactersVars,
  GCacheControlScope,
  GFilterCharacter,
  GFilterEpisode,
  GFilterLocation,
  GUpload,
])
final Serializers serializers = _serializersBuilder.build();
