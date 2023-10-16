// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:proto_app/__generated__/serializers.gql.dart' as _i1;

part 'all_char_schema.data.gql.g.dart';

abstract class GAllCharactersData
    implements Built<GAllCharactersData, GAllCharactersDataBuilder> {
  GAllCharactersData._();

  factory GAllCharactersData([Function(GAllCharactersDataBuilder b) updates]) =
      _$GAllCharactersData;

  static void _initializeBuilder(GAllCharactersDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAllCharactersData_characters? get characters;
  static Serializer<GAllCharactersData> get serializer =>
      _$gAllCharactersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCharactersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllCharactersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCharactersData.serializer,
        json,
      );
}

abstract class GAllCharactersData_characters
    implements
        Built<GAllCharactersData_characters,
            GAllCharactersData_charactersBuilder> {
  GAllCharactersData_characters._();

  factory GAllCharactersData_characters(
          [Function(GAllCharactersData_charactersBuilder b) updates]) =
      _$GAllCharactersData_characters;

  static void _initializeBuilder(GAllCharactersData_charactersBuilder b) =>
      b..G__typename = 'Characters';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAllCharactersData_characters_results?>? get results;
  static Serializer<GAllCharactersData_characters> get serializer =>
      _$gAllCharactersDataCharactersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCharactersData_characters.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllCharactersData_characters? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCharactersData_characters.serializer,
        json,
      );
}

abstract class GAllCharactersData_characters_results
    implements
        Built<GAllCharactersData_characters_results,
            GAllCharactersData_characters_resultsBuilder> {
  GAllCharactersData_characters_results._();

  factory GAllCharactersData_characters_results(
          [Function(GAllCharactersData_characters_resultsBuilder b) updates]) =
      _$GAllCharactersData_characters_results;

  static void _initializeBuilder(
          GAllCharactersData_characters_resultsBuilder b) =>
      b..G__typename = 'Character';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  String? get image;
  static Serializer<GAllCharactersData_characters_results> get serializer =>
      _$gAllCharactersDataCharactersResultsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllCharactersData_characters_results.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllCharactersData_characters_results? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllCharactersData_characters_results.serializer,
        json,
      );
}
