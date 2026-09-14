// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data4.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data4 _$Data4FromJson(Map<String, dynamic> json) {
  return _Data4.fromJson(json);
}

/// @nodoc
mixin _$Data4 {
  String? get id => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  String? get objectKey => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this Data4 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data4CopyWith<Data4> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data4CopyWith<$Res> {
  factory $Data4CopyWith(Data4 value, $Res Function(Data4) then) =
      _$Data4CopyWithImpl<$Res, Data4>;
  @useResult
  $Res call({String? id, String? purpose, String? objectKey, String? status});
}

/// @nodoc
class _$Data4CopyWithImpl<$Res, $Val extends Data4>
    implements $Data4CopyWith<$Res> {
  _$Data4CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? purpose = freezed,
    Object? objectKey = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            purpose: freezed == purpose
                ? _value.purpose
                : purpose // ignore: cast_nullable_to_non_nullable
                      as String?,
            objectKey: freezed == objectKey
                ? _value.objectKey
                : objectKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Data4ImplCopyWith<$Res> implements $Data4CopyWith<$Res> {
  factory _$$Data4ImplCopyWith(
    _$Data4Impl value,
    $Res Function(_$Data4Impl) then,
  ) = __$$Data4ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? purpose, String? objectKey, String? status});
}

/// @nodoc
class __$$Data4ImplCopyWithImpl<$Res>
    extends _$Data4CopyWithImpl<$Res, _$Data4Impl>
    implements _$$Data4ImplCopyWith<$Res> {
  __$$Data4ImplCopyWithImpl(
    _$Data4Impl _value,
    $Res Function(_$Data4Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? purpose = freezed,
    Object? objectKey = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$Data4Impl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        purpose: freezed == purpose
            ? _value.purpose
            : purpose // ignore: cast_nullable_to_non_nullable
                  as String?,
        objectKey: freezed == objectKey
            ? _value.objectKey
            : objectKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Data4Impl implements _Data4 {
  const _$Data4Impl({this.id, this.purpose, this.objectKey, this.status});

  factory _$Data4Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data4ImplFromJson(json);

  @override
  final String? id;
  @override
  final String? purpose;
  @override
  final String? objectKey;
  @override
  final String? status;

  @override
  String toString() {
    return 'Data4(id: $id, purpose: $purpose, objectKey: $objectKey, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data4Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, purpose, objectKey, status);

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data4ImplCopyWith<_$Data4Impl> get copyWith =>
      __$$Data4ImplCopyWithImpl<_$Data4Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data4ImplToJson(this);
  }
}

abstract class _Data4 implements Data4 {
  const factory _Data4({
    final String? id,
    final String? purpose,
    final String? objectKey,
    final String? status,
  }) = _$Data4Impl;

  factory _Data4.fromJson(Map<String, dynamic> json) = _$Data4Impl.fromJson;

  @override
  String? get id;
  @override
  String? get purpose;
  @override
  String? get objectKey;
  @override
  String? get status;

  /// Create a copy of Data4
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data4ImplCopyWith<_$Data4Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
