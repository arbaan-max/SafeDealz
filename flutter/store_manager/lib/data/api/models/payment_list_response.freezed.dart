// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentListResponse _$PaymentListResponseFromJson(Map<String, dynamic> json) {
  return _PaymentListResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<PaymentInstruction> get data => throw _privateConstructorUsedError;

  /// Serializes this PaymentListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentListResponseCopyWith<PaymentListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentListResponseCopyWith<$Res> {
  factory $PaymentListResponseCopyWith(
    PaymentListResponse value,
    $Res Function(PaymentListResponse) then,
  ) = _$PaymentListResponseCopyWithImpl<$Res, PaymentListResponse>;
  @useResult
  $Res call({bool success, List<PaymentInstruction> data});
}

/// @nodoc
class _$PaymentListResponseCopyWithImpl<$Res, $Val extends PaymentListResponse>
    implements $PaymentListResponseCopyWith<$Res> {
  _$PaymentListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentListResponse
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
                      as List<PaymentInstruction>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentListResponseImplCopyWith<$Res>
    implements $PaymentListResponseCopyWith<$Res> {
  factory _$$PaymentListResponseImplCopyWith(
    _$PaymentListResponseImpl value,
    $Res Function(_$PaymentListResponseImpl) then,
  ) = __$$PaymentListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<PaymentInstruction> data});
}

/// @nodoc
class __$$PaymentListResponseImplCopyWithImpl<$Res>
    extends _$PaymentListResponseCopyWithImpl<$Res, _$PaymentListResponseImpl>
    implements _$$PaymentListResponseImplCopyWith<$Res> {
  __$$PaymentListResponseImplCopyWithImpl(
    _$PaymentListResponseImpl _value,
    $Res Function(_$PaymentListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$PaymentListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<PaymentInstruction>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentListResponseImpl implements _PaymentListResponse {
  const _$PaymentListResponseImpl({
    required this.success,
    required final List<PaymentInstruction> data,
  }) : _data = data;

  factory _$PaymentListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentListResponseImplFromJson(json);

  @override
  final bool success;
  final List<PaymentInstruction> _data;
  @override
  List<PaymentInstruction> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PaymentListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of PaymentListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentListResponseImplCopyWith<_$PaymentListResponseImpl> get copyWith =>
      __$$PaymentListResponseImplCopyWithImpl<_$PaymentListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentListResponseImplToJson(this);
  }
}

abstract class _PaymentListResponse implements PaymentListResponse {
  const factory _PaymentListResponse({
    required final bool success,
    required final List<PaymentInstruction> data,
  }) = _$PaymentListResponseImpl;

  factory _PaymentListResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<PaymentInstruction> get data;

  /// Create a copy of PaymentListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentListResponseImplCopyWith<_$PaymentListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
