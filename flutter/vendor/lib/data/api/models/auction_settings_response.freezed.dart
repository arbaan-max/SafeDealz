// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_settings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionSettingsResponse _$AuctionSettingsResponseFromJson(
  Map<String, dynamic> json,
) {
  return _AuctionSettingsResponse.fromJson(json);
}

/// @nodoc
mixin _$AuctionSettingsResponse {
  bool get success => throw _privateConstructorUsedError;
  AuctionSettings get data => throw _privateConstructorUsedError;

  /// Serializes this AuctionSettingsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionSettingsResponseCopyWith<AuctionSettingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionSettingsResponseCopyWith<$Res> {
  factory $AuctionSettingsResponseCopyWith(
    AuctionSettingsResponse value,
    $Res Function(AuctionSettingsResponse) then,
  ) = _$AuctionSettingsResponseCopyWithImpl<$Res, AuctionSettingsResponse>;
  @useResult
  $Res call({bool success, AuctionSettings data});

  $AuctionSettingsCopyWith<$Res> get data;
}

/// @nodoc
class _$AuctionSettingsResponseCopyWithImpl<
  $Res,
  $Val extends AuctionSettingsResponse
>
    implements $AuctionSettingsResponseCopyWith<$Res> {
  _$AuctionSettingsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionSettingsResponse
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
                      as AuctionSettings,
          )
          as $Val,
    );
  }

  /// Create a copy of AuctionSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuctionSettingsCopyWith<$Res> get data {
    return $AuctionSettingsCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionSettingsResponseImplCopyWith<$Res>
    implements $AuctionSettingsResponseCopyWith<$Res> {
  factory _$$AuctionSettingsResponseImplCopyWith(
    _$AuctionSettingsResponseImpl value,
    $Res Function(_$AuctionSettingsResponseImpl) then,
  ) = __$$AuctionSettingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, AuctionSettings data});

  @override
  $AuctionSettingsCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuctionSettingsResponseImplCopyWithImpl<$Res>
    extends
        _$AuctionSettingsResponseCopyWithImpl<
          $Res,
          _$AuctionSettingsResponseImpl
        >
    implements _$$AuctionSettingsResponseImplCopyWith<$Res> {
  __$$AuctionSettingsResponseImplCopyWithImpl(
    _$AuctionSettingsResponseImpl _value,
    $Res Function(_$AuctionSettingsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$AuctionSettingsResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as AuctionSettings,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionSettingsResponseImpl implements _AuctionSettingsResponse {
  const _$AuctionSettingsResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$AuctionSettingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionSettingsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final AuctionSettings data;

  @override
  String toString() {
    return 'AuctionSettingsResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionSettingsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of AuctionSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionSettingsResponseImplCopyWith<_$AuctionSettingsResponseImpl>
  get copyWith =>
      __$$AuctionSettingsResponseImplCopyWithImpl<
        _$AuctionSettingsResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionSettingsResponseImplToJson(this);
  }
}

abstract class _AuctionSettingsResponse implements AuctionSettingsResponse {
  const factory _AuctionSettingsResponse({
    required final bool success,
    required final AuctionSettings data,
  }) = _$AuctionSettingsResponseImpl;

  factory _AuctionSettingsResponse.fromJson(Map<String, dynamic> json) =
      _$AuctionSettingsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  AuctionSettings get data;

  /// Create a copy of AuctionSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionSettingsResponseImplCopyWith<_$AuctionSettingsResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
