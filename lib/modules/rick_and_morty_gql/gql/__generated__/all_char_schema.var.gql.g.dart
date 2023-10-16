// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_char_schema.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllCharactersVars> _$gAllCharactersVarsSerializer =
    new _$GAllCharactersVarsSerializer();

class _$GAllCharactersVarsSerializer
    implements StructuredSerializer<GAllCharactersVars> {
  @override
  final Iterable<Type> types = const [GAllCharactersVars, _$GAllCharactersVars];
  @override
  final String wireName = 'GAllCharactersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllCharactersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GAllCharactersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllCharactersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAllCharactersVars extends GAllCharactersVars {
  @override
  final int? page;

  factory _$GAllCharactersVars(
          [void Function(GAllCharactersVarsBuilder)? updates]) =>
      (new GAllCharactersVarsBuilder()..update(updates))._build();

  _$GAllCharactersVars._({this.page}) : super._();

  @override
  GAllCharactersVars rebuild(
          void Function(GAllCharactersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllCharactersVarsBuilder toBuilder() =>
      new GAllCharactersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllCharactersVars && page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAllCharactersVars')
          ..add('page', page))
        .toString();
  }
}

class GAllCharactersVarsBuilder
    implements Builder<GAllCharactersVars, GAllCharactersVarsBuilder> {
  _$GAllCharactersVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GAllCharactersVarsBuilder();

  GAllCharactersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllCharactersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllCharactersVars;
  }

  @override
  void update(void Function(GAllCharactersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllCharactersVars build() => _build();

  _$GAllCharactersVars _build() {
    final _$result = _$v ?? new _$GAllCharactersVars._(page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
