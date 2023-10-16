// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_char_schema.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllCharactersData> _$gAllCharactersDataSerializer =
    new _$GAllCharactersDataSerializer();
Serializer<GAllCharactersData_characters>
    _$gAllCharactersDataCharactersSerializer =
    new _$GAllCharactersData_charactersSerializer();
Serializer<GAllCharactersData_characters_results>
    _$gAllCharactersDataCharactersResultsSerializer =
    new _$GAllCharactersData_characters_resultsSerializer();

class _$GAllCharactersDataSerializer
    implements StructuredSerializer<GAllCharactersData> {
  @override
  final Iterable<Type> types = const [GAllCharactersData, _$GAllCharactersData];
  @override
  final String wireName = 'GAllCharactersData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllCharactersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAllCharactersData_characters)));
    }
    return result;
  }

  @override
  GAllCharactersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllCharactersDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAllCharactersData_characters))!
              as GAllCharactersData_characters);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllCharactersData_charactersSerializer
    implements StructuredSerializer<GAllCharactersData_characters> {
  @override
  final Iterable<Type> types = const [
    GAllCharactersData_characters,
    _$GAllCharactersData_characters
  ];
  @override
  final String wireName = 'GAllCharactersData_characters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllCharactersData_characters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GAllCharactersData_characters_results)
            ])));
    }
    return result;
  }

  @override
  GAllCharactersData_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllCharactersData_charactersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GAllCharactersData_characters_results)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllCharactersData_characters_resultsSerializer
    implements StructuredSerializer<GAllCharactersData_characters_results> {
  @override
  final Iterable<Type> types = const [
    GAllCharactersData_characters_results,
    _$GAllCharactersData_characters_results
  ];
  @override
  final String wireName = 'GAllCharactersData_characters_results';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllCharactersData_characters_results object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAllCharactersData_characters_results deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllCharactersData_characters_resultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAllCharactersData extends GAllCharactersData {
  @override
  final String G__typename;
  @override
  final GAllCharactersData_characters? characters;

  factory _$GAllCharactersData(
          [void Function(GAllCharactersDataBuilder)? updates]) =>
      (new GAllCharactersDataBuilder()..update(updates))._build();

  _$GAllCharactersData._({required this.G__typename, this.characters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAllCharactersData', 'G__typename');
  }

  @override
  GAllCharactersData rebuild(
          void Function(GAllCharactersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllCharactersDataBuilder toBuilder() =>
      new GAllCharactersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllCharactersData &&
        G__typename == other.G__typename &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAllCharactersData')
          ..add('G__typename', G__typename)
          ..add('characters', characters))
        .toString();
  }
}

class GAllCharactersDataBuilder
    implements Builder<GAllCharactersData, GAllCharactersDataBuilder> {
  _$GAllCharactersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAllCharactersData_charactersBuilder? _characters;
  GAllCharactersData_charactersBuilder get characters =>
      _$this._characters ??= new GAllCharactersData_charactersBuilder();
  set characters(GAllCharactersData_charactersBuilder? characters) =>
      _$this._characters = characters;

  GAllCharactersDataBuilder() {
    GAllCharactersData._initializeBuilder(this);
  }

  GAllCharactersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _characters = $v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllCharactersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllCharactersData;
  }

  @override
  void update(void Function(GAllCharactersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllCharactersData build() => _build();

  _$GAllCharactersData _build() {
    _$GAllCharactersData _$result;
    try {
      _$result = _$v ??
          new _$GAllCharactersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAllCharactersData', 'G__typename'),
              characters: _characters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAllCharactersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllCharactersData_characters extends GAllCharactersData_characters {
  @override
  final String G__typename;
  @override
  final BuiltList<GAllCharactersData_characters_results?>? results;

  factory _$GAllCharactersData_characters(
          [void Function(GAllCharactersData_charactersBuilder)? updates]) =>
      (new GAllCharactersData_charactersBuilder()..update(updates))._build();

  _$GAllCharactersData_characters._({required this.G__typename, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAllCharactersData_characters', 'G__typename');
  }

  @override
  GAllCharactersData_characters rebuild(
          void Function(GAllCharactersData_charactersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllCharactersData_charactersBuilder toBuilder() =>
      new GAllCharactersData_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllCharactersData_characters &&
        G__typename == other.G__typename &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAllCharactersData_characters')
          ..add('G__typename', G__typename)
          ..add('results', results))
        .toString();
  }
}

class GAllCharactersData_charactersBuilder
    implements
        Builder<GAllCharactersData_characters,
            GAllCharactersData_charactersBuilder> {
  _$GAllCharactersData_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAllCharactersData_characters_results?>? _results;
  ListBuilder<GAllCharactersData_characters_results?> get results =>
      _$this._results ??=
          new ListBuilder<GAllCharactersData_characters_results?>();
  set results(ListBuilder<GAllCharactersData_characters_results?>? results) =>
      _$this._results = results;

  GAllCharactersData_charactersBuilder() {
    GAllCharactersData_characters._initializeBuilder(this);
  }

  GAllCharactersData_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllCharactersData_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllCharactersData_characters;
  }

  @override
  void update(void Function(GAllCharactersData_charactersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllCharactersData_characters build() => _build();

  _$GAllCharactersData_characters _build() {
    _$GAllCharactersData_characters _$result;
    try {
      _$result = _$v ??
          new _$GAllCharactersData_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAllCharactersData_characters', 'G__typename'),
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAllCharactersData_characters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllCharactersData_characters_results
    extends GAllCharactersData_characters_results {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;

  factory _$GAllCharactersData_characters_results(
          [void Function(GAllCharactersData_characters_resultsBuilder)?
              updates]) =>
      (new GAllCharactersData_characters_resultsBuilder()..update(updates))
          ._build();

  _$GAllCharactersData_characters_results._(
      {required this.G__typename, this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAllCharactersData_characters_results', 'G__typename');
  }

  @override
  GAllCharactersData_characters_results rebuild(
          void Function(GAllCharactersData_characters_resultsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllCharactersData_characters_resultsBuilder toBuilder() =>
      new GAllCharactersData_characters_resultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllCharactersData_characters_results &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAllCharactersData_characters_results')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GAllCharactersData_characters_resultsBuilder
    implements
        Builder<GAllCharactersData_characters_results,
            GAllCharactersData_characters_resultsBuilder> {
  _$GAllCharactersData_characters_results? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GAllCharactersData_characters_resultsBuilder() {
    GAllCharactersData_characters_results._initializeBuilder(this);
  }

  GAllCharactersData_characters_resultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllCharactersData_characters_results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllCharactersData_characters_results;
  }

  @override
  void update(
      void Function(GAllCharactersData_characters_resultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllCharactersData_characters_results build() => _build();

  _$GAllCharactersData_characters_results _build() {
    final _$result = _$v ??
        new _$GAllCharactersData_characters_results._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAllCharactersData_characters_results', 'G__typename'),
            id: id,
            name: name,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
