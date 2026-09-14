// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CatalogStep _$CatalogStepFromJson(Map<String, dynamic> json) {
  return _CatalogStep.fromJson(json);
}

/// @nodoc
mixin _$CatalogStep {
  String get title => throw _privateConstructorUsedError;
  List<String> get keys => throw _privateConstructorUsedError;

  /// Serializes this CatalogStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogStepCopyWith<CatalogStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStepCopyWith<$Res> {
  factory $CatalogStepCopyWith(
    CatalogStep value,
    $Res Function(CatalogStep) then,
  ) = _$CatalogStepCopyWithImpl<$Res, CatalogStep>;
  @useResult
  $Res call({String title, List<String> keys});
}

/// @nodoc
class _$CatalogStepCopyWithImpl<$Res, $Val extends CatalogStep>
    implements $CatalogStepCopyWith<$Res> {
  _$CatalogStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? keys = null}) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            keys: null == keys
                ? _value.keys
                : keys // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CatalogStepImplCopyWith<$Res>
    implements $CatalogStepCopyWith<$Res> {
  factory _$$CatalogStepImplCopyWith(
    _$CatalogStepImpl value,
    $Res Function(_$CatalogStepImpl) then,
  ) = __$$CatalogStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> keys});
}

/// @nodoc
class __$$CatalogStepImplCopyWithImpl<$Res>
    extends _$CatalogStepCopyWithImpl<$Res, _$CatalogStepImpl>
    implements _$$CatalogStepImplCopyWith<$Res> {
  __$$CatalogStepImplCopyWithImpl(
    _$CatalogStepImpl _value,
    $Res Function(_$CatalogStepImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatalogStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? keys = null}) {
    return _then(
      _$CatalogStepImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        keys: null == keys
            ? _value._keys
            : keys // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogStepImpl implements _CatalogStep {
  const _$CatalogStepImpl({
    required this.title,
    required final List<String> keys,
  }) : _keys = keys;

  factory _$CatalogStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogStepImplFromJson(json);

  @override
  final String title;
  final List<String> _keys;
  @override
  List<String> get keys {
    if (_keys is EqualUnmodifiableListView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keys);
  }

  @override
  String toString() {
    return 'CatalogStep(title: $title, keys: $keys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogStepImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._keys, _keys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    const DeepCollectionEquality().hash(_keys),
  );

  /// Create a copy of CatalogStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogStepImplCopyWith<_$CatalogStepImpl> get copyWith =>
      __$$CatalogStepImplCopyWithImpl<_$CatalogStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogStepImplToJson(this);
  }
}

abstract class _CatalogStep implements CatalogStep {
  const factory _CatalogStep({
    required final String title,
    required final List<String> keys,
  }) = _$CatalogStepImpl;

  factory _CatalogStep.fromJson(Map<String, dynamic> json) =
      _$CatalogStepImpl.fromJson;

  @override
  String get title;
  @override
  List<String> get keys;

  /// Create a copy of CatalogStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogStepImplCopyWith<_$CatalogStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
