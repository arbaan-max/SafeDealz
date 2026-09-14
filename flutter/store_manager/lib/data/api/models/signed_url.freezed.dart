// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignedUrl _$SignedUrlFromJson(Map<String, dynamic> json) {
  return _SignedUrl.fromJson(json);
}

/// @nodoc
mixin _$SignedUrl {
  String? get method => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;
  bool? get live => throw _privateConstructorUsedError;

  /// Serializes this SignedUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignedUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignedUrlCopyWith<SignedUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedUrlCopyWith<$Res> {
  factory $SignedUrlCopyWith(SignedUrl value, $Res Function(SignedUrl) then) =
      _$SignedUrlCopyWithImpl<$Res, SignedUrl>;
  @useResult
  $Res call({String? method, String? url, String? expiresAt, bool? live});
}

/// @nodoc
class _$SignedUrlCopyWithImpl<$Res, $Val extends SignedUrl>
    implements $SignedUrlCopyWith<$Res> {
  _$SignedUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignedUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? url = freezed,
    Object? expiresAt = freezed,
    Object? live = freezed,
  }) {
    return _then(
      _value.copyWith(
            method: freezed == method
                ? _value.method
                : method // ignore: cast_nullable_to_non_nullable
                      as String?,
            url: freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            live: freezed == live
                ? _value.live
                : live // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignedUrlImplCopyWith<$Res>
    implements $SignedUrlCopyWith<$Res> {
  factory _$$SignedUrlImplCopyWith(
    _$SignedUrlImpl value,
    $Res Function(_$SignedUrlImpl) then,
  ) = __$$SignedUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? method, String? url, String? expiresAt, bool? live});
}

/// @nodoc
class __$$SignedUrlImplCopyWithImpl<$Res>
    extends _$SignedUrlCopyWithImpl<$Res, _$SignedUrlImpl>
    implements _$$SignedUrlImplCopyWith<$Res> {
  __$$SignedUrlImplCopyWithImpl(
    _$SignedUrlImpl _value,
    $Res Function(_$SignedUrlImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignedUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? url = freezed,
    Object? expiresAt = freezed,
    Object? live = freezed,
  }) {
    return _then(
      _$SignedUrlImpl(
        method: freezed == method
            ? _value.method
            : method // ignore: cast_nullable_to_non_nullable
                  as String?,
        url: freezed == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        live: freezed == live
            ? _value.live
            : live // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignedUrlImpl implements _SignedUrl {
  const _$SignedUrlImpl({this.method, this.url, this.expiresAt, this.live});

  factory _$SignedUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignedUrlImplFromJson(json);

  @override
  final String? method;
  @override
  final String? url;
  @override
  final String? expiresAt;
  @override
  final bool? live;

  @override
  String toString() {
    return 'SignedUrl(method: $method, url: $url, expiresAt: $expiresAt, live: $live)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedUrlImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.live, live) || other.live == live));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, method, url, expiresAt, live);

  /// Create a copy of SignedUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedUrlImplCopyWith<_$SignedUrlImpl> get copyWith =>
      __$$SignedUrlImplCopyWithImpl<_$SignedUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedUrlImplToJson(this);
  }
}

abstract class _SignedUrl implements SignedUrl {
  const factory _SignedUrl({
    final String? method,
    final String? url,
    final String? expiresAt,
    final bool? live,
  }) = _$SignedUrlImpl;

  factory _SignedUrl.fromJson(Map<String, dynamic> json) =
      _$SignedUrlImpl.fromJson;

  @override
  String? get method;
  @override
  String? get url;
  @override
  String? get expiresAt;
  @override
  bool? get live;

  /// Create a copy of SignedUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignedUrlImplCopyWith<_$SignedUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
