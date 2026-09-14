// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OverviewResponse _$OverviewResponseFromJson(Map<String, dynamic> json) {
  return _OverviewResponse.fromJson(json);
}

/// @nodoc
mixin _$OverviewResponse {
  bool get success => throw _privateConstructorUsedError;
  Overview get data => throw _privateConstructorUsedError;

  /// Serializes this OverviewResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewResponseCopyWith<OverviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewResponseCopyWith<$Res> {
  factory $OverviewResponseCopyWith(
    OverviewResponse value,
    $Res Function(OverviewResponse) then,
  ) = _$OverviewResponseCopyWithImpl<$Res, OverviewResponse>;
  @useResult
  $Res call({bool success, Overview data});

  $OverviewCopyWith<$Res> get data;
}

/// @nodoc
class _$OverviewResponseCopyWithImpl<$Res, $Val extends OverviewResponse>
    implements $OverviewResponseCopyWith<$Res> {
  _$OverviewResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewResponse
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
                      as Overview,
          )
          as $Val,
    );
  }

  /// Create a copy of OverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverviewCopyWith<$Res> get data {
    return $OverviewCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OverviewResponseImplCopyWith<$Res>
    implements $OverviewResponseCopyWith<$Res> {
  factory _$$OverviewResponseImplCopyWith(
    _$OverviewResponseImpl value,
    $Res Function(_$OverviewResponseImpl) then,
  ) = __$$OverviewResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Overview data});

  @override
  $OverviewCopyWith<$Res> get data;
}

/// @nodoc
class __$$OverviewResponseImplCopyWithImpl<$Res>
    extends _$OverviewResponseCopyWithImpl<$Res, _$OverviewResponseImpl>
    implements _$$OverviewResponseImplCopyWith<$Res> {
  __$$OverviewResponseImplCopyWithImpl(
    _$OverviewResponseImpl _value,
    $Res Function(_$OverviewResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$OverviewResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Overview,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OverviewResponseImpl implements _OverviewResponse {
  const _$OverviewResponseImpl({required this.success, required this.data});

  factory _$OverviewResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Overview data;

  @override
  String toString() {
    return 'OverviewResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of OverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewResponseImplCopyWith<_$OverviewResponseImpl> get copyWith =>
      __$$OverviewResponseImplCopyWithImpl<_$OverviewResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewResponseImplToJson(this);
  }
}

abstract class _OverviewResponse implements OverviewResponse {
  const factory _OverviewResponse({
    required final bool success,
    required final Overview data,
  }) = _$OverviewResponseImpl;

  factory _OverviewResponse.fromJson(Map<String, dynamic> json) =
      _$OverviewResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Overview get data;

  /// Create a copy of OverviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewResponseImplCopyWith<_$OverviewResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
