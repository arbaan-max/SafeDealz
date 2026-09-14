// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deal_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DealResponse _$DealResponseFromJson(Map<String, dynamic> json) {
  return _DealResponse.fromJson(json);
}

/// @nodoc
mixin _$DealResponse {
  bool get success => throw _privateConstructorUsedError;
  Deal get data => throw _privateConstructorUsedError;

  /// Serializes this DealResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DealResponseCopyWith<DealResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealResponseCopyWith<$Res> {
  factory $DealResponseCopyWith(
    DealResponse value,
    $Res Function(DealResponse) then,
  ) = _$DealResponseCopyWithImpl<$Res, DealResponse>;
  @useResult
  $Res call({bool success, Deal data});

  $DealCopyWith<$Res> get data;
}

/// @nodoc
class _$DealResponseCopyWithImpl<$Res, $Val extends DealResponse>
    implements $DealResponseCopyWith<$Res> {
  _$DealResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DealResponse
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
                      as Deal,
          )
          as $Val,
    );
  }

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DealCopyWith<$Res> get data {
    return $DealCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DealResponseImplCopyWith<$Res>
    implements $DealResponseCopyWith<$Res> {
  factory _$$DealResponseImplCopyWith(
    _$DealResponseImpl value,
    $Res Function(_$DealResponseImpl) then,
  ) = __$$DealResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Deal data});

  @override
  $DealCopyWith<$Res> get data;
}

/// @nodoc
class __$$DealResponseImplCopyWithImpl<$Res>
    extends _$DealResponseCopyWithImpl<$Res, _$DealResponseImpl>
    implements _$$DealResponseImplCopyWith<$Res> {
  __$$DealResponseImplCopyWithImpl(
    _$DealResponseImpl _value,
    $Res Function(_$DealResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$DealResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Deal,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DealResponseImpl implements _DealResponse {
  const _$DealResponseImpl({required this.success, required this.data});

  factory _$DealResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Deal data;

  @override
  String toString() {
    return 'DealResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealResponseImplCopyWith<_$DealResponseImpl> get copyWith =>
      __$$DealResponseImplCopyWithImpl<_$DealResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealResponseImplToJson(this);
  }
}

abstract class _DealResponse implements DealResponse {
  const factory _DealResponse({
    required final bool success,
    required final Deal data,
  }) = _$DealResponseImpl;

  factory _DealResponse.fromJson(Map<String, dynamic> json) =
      _$DealResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Deal get data;

  /// Create a copy of DealResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealResponseImplCopyWith<_$DealResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
