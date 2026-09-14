// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WalletListResponse _$WalletListResponseFromJson(Map<String, dynamic> json) {
  return _WalletListResponse.fromJson(json);
}

/// @nodoc
mixin _$WalletListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<VendorWallet> get data => throw _privateConstructorUsedError;

  /// Serializes this WalletListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletListResponseCopyWith<WalletListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletListResponseCopyWith<$Res> {
  factory $WalletListResponseCopyWith(
    WalletListResponse value,
    $Res Function(WalletListResponse) then,
  ) = _$WalletListResponseCopyWithImpl<$Res, WalletListResponse>;
  @useResult
  $Res call({bool success, List<VendorWallet> data});
}

/// @nodoc
class _$WalletListResponseCopyWithImpl<$Res, $Val extends WalletListResponse>
    implements $WalletListResponseCopyWith<$Res> {
  _$WalletListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletListResponse
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
                      as List<VendorWallet>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WalletListResponseImplCopyWith<$Res>
    implements $WalletListResponseCopyWith<$Res> {
  factory _$$WalletListResponseImplCopyWith(
    _$WalletListResponseImpl value,
    $Res Function(_$WalletListResponseImpl) then,
  ) = __$$WalletListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<VendorWallet> data});
}

/// @nodoc
class __$$WalletListResponseImplCopyWithImpl<$Res>
    extends _$WalletListResponseCopyWithImpl<$Res, _$WalletListResponseImpl>
    implements _$$WalletListResponseImplCopyWith<$Res> {
  __$$WalletListResponseImplCopyWithImpl(
    _$WalletListResponseImpl _value,
    $Res Function(_$WalletListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WalletListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$WalletListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<VendorWallet>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletListResponseImpl implements _WalletListResponse {
  const _$WalletListResponseImpl({
    required this.success,
    required final List<VendorWallet> data,
  }) : _data = data;

  factory _$WalletListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletListResponseImplFromJson(json);

  @override
  final bool success;
  final List<VendorWallet> _data;
  @override
  List<VendorWallet> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'WalletListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletListResponseImpl &&
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

  /// Create a copy of WalletListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletListResponseImplCopyWith<_$WalletListResponseImpl> get copyWith =>
      __$$WalletListResponseImplCopyWithImpl<_$WalletListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletListResponseImplToJson(this);
  }
}

abstract class _WalletListResponse implements WalletListResponse {
  const factory _WalletListResponse({
    required final bool success,
    required final List<VendorWallet> data,
  }) = _$WalletListResponseImpl;

  factory _WalletListResponse.fromJson(Map<String, dynamic> json) =
      _$WalletListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<VendorWallet> get data;

  /// Create a copy of WalletListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletListResponseImplCopyWith<_$WalletListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
