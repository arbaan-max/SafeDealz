// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VendorResponse _$VendorResponseFromJson(Map<String, dynamic> json) {
  return _VendorResponse.fromJson(json);
}

/// @nodoc
mixin _$VendorResponse {
  bool get success => throw _privateConstructorUsedError;
  VendorAccount get data => throw _privateConstructorUsedError;

  /// Serializes this VendorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorResponseCopyWith<VendorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorResponseCopyWith<$Res> {
  factory $VendorResponseCopyWith(
    VendorResponse value,
    $Res Function(VendorResponse) then,
  ) = _$VendorResponseCopyWithImpl<$Res, VendorResponse>;
  @useResult
  $Res call({bool success, VendorAccount data});

  $VendorAccountCopyWith<$Res> get data;
}

/// @nodoc
class _$VendorResponseCopyWithImpl<$Res, $Val extends VendorResponse>
    implements $VendorResponseCopyWith<$Res> {
  _$VendorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorResponse
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
                      as VendorAccount,
          )
          as $Val,
    );
  }

  /// Create a copy of VendorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorAccountCopyWith<$Res> get data {
    return $VendorAccountCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorResponseImplCopyWith<$Res>
    implements $VendorResponseCopyWith<$Res> {
  factory _$$VendorResponseImplCopyWith(
    _$VendorResponseImpl value,
    $Res Function(_$VendorResponseImpl) then,
  ) = __$$VendorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, VendorAccount data});

  @override
  $VendorAccountCopyWith<$Res> get data;
}

/// @nodoc
class __$$VendorResponseImplCopyWithImpl<$Res>
    extends _$VendorResponseCopyWithImpl<$Res, _$VendorResponseImpl>
    implements _$$VendorResponseImplCopyWith<$Res> {
  __$$VendorResponseImplCopyWithImpl(
    _$VendorResponseImpl _value,
    $Res Function(_$VendorResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VendorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$VendorResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as VendorAccount,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorResponseImpl implements _VendorResponse {
  const _$VendorResponseImpl({required this.success, required this.data});

  factory _$VendorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final VendorAccount data;

  @override
  String toString() {
    return 'VendorResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of VendorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorResponseImplCopyWith<_$VendorResponseImpl> get copyWith =>
      __$$VendorResponseImplCopyWithImpl<_$VendorResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorResponseImplToJson(this);
  }
}

abstract class _VendorResponse implements VendorResponse {
  const factory _VendorResponse({
    required final bool success,
    required final VendorAccount data,
  }) = _$VendorResponseImpl;

  factory _VendorResponse.fromJson(Map<String, dynamic> json) =
      _$VendorResponseImpl.fromJson;

  @override
  bool get success;
  @override
  VendorAccount get data;

  /// Create a copy of VendorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorResponseImplCopyWith<_$VendorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
