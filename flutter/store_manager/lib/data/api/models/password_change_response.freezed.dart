// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_change_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PasswordChangeResponse _$PasswordChangeResponseFromJson(
  Map<String, dynamic> json,
) {
  return _PasswordChangeResponse.fromJson(json);
}

/// @nodoc
mixin _$PasswordChangeResponse {
  bool get success => throw _privateConstructorUsedError;
  PasswordChange get data => throw _privateConstructorUsedError;

  /// Serializes this PasswordChangeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordChangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordChangeResponseCopyWith<PasswordChangeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangeResponseCopyWith<$Res> {
  factory $PasswordChangeResponseCopyWith(
    PasswordChangeResponse value,
    $Res Function(PasswordChangeResponse) then,
  ) = _$PasswordChangeResponseCopyWithImpl<$Res, PasswordChangeResponse>;
  @useResult
  $Res call({bool success, PasswordChange data});

  $PasswordChangeCopyWith<$Res> get data;
}

/// @nodoc
class _$PasswordChangeResponseCopyWithImpl<
  $Res,
  $Val extends PasswordChangeResponse
>
    implements $PasswordChangeResponseCopyWith<$Res> {
  _$PasswordChangeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordChangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as PasswordChange,
          )
          as $Val,
    );
  }

  /// Create a copy of PasswordChangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordChangeCopyWith<$Res> get data {
    return $PasswordChangeCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasswordChangeResponseImplCopyWith<$Res>
    implements $PasswordChangeResponseCopyWith<$Res> {
  factory _$$PasswordChangeResponseImplCopyWith(
    _$PasswordChangeResponseImpl value,
    $Res Function(_$PasswordChangeResponseImpl) then,
  ) = __$$PasswordChangeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, PasswordChange data});

  @override
  $PasswordChangeCopyWith<$Res> get data;
}

/// @nodoc
class __$$PasswordChangeResponseImplCopyWithImpl<$Res>
    extends
        _$PasswordChangeResponseCopyWithImpl<$Res, _$PasswordChangeResponseImpl>
    implements _$$PasswordChangeResponseImplCopyWith<$Res> {
  __$$PasswordChangeResponseImplCopyWithImpl(
    _$PasswordChangeResponseImpl _value,
    $Res Function(_$PasswordChangeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordChangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$PasswordChangeResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as PasswordChange,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordChangeResponseImpl implements _PasswordChangeResponse {
  const _$PasswordChangeResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$PasswordChangeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordChangeResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final PasswordChange data;

  @override
  String toString() {
    return 'PasswordChangeResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of PasswordChangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangeResponseImplCopyWith<_$PasswordChangeResponseImpl>
  get copyWith =>
      __$$PasswordChangeResponseImplCopyWithImpl<_$PasswordChangeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordChangeResponseImplToJson(this);
  }
}

abstract class _PasswordChangeResponse implements PasswordChangeResponse {
  const factory _PasswordChangeResponse({
    required final bool success,
    required final PasswordChange data,
  }) = _$PasswordChangeResponseImpl;

  factory _PasswordChangeResponse.fromJson(Map<String, dynamic> json) =
      _$PasswordChangeResponseImpl.fromJson;

  @override
  bool get success;
  @override
  PasswordChange get data;

  /// Create a copy of PasswordChangeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangeResponseImplCopyWith<_$PasswordChangeResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
