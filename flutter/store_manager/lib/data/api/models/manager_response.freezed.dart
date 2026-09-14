// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ManagerResponse _$ManagerResponseFromJson(Map<String, dynamic> json) {
  return _ManagerResponse.fromJson(json);
}

/// @nodoc
mixin _$ManagerResponse {
  bool get success => throw _privateConstructorUsedError;
  ManagerAccount get data => throw _privateConstructorUsedError;

  /// Serializes this ManagerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerResponseCopyWith<ManagerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerResponseCopyWith<$Res> {
  factory $ManagerResponseCopyWith(
    ManagerResponse value,
    $Res Function(ManagerResponse) then,
  ) = _$ManagerResponseCopyWithImpl<$Res, ManagerResponse>;
  @useResult
  $Res call({bool success, ManagerAccount data});

  $ManagerAccountCopyWith<$Res> get data;
}

/// @nodoc
class _$ManagerResponseCopyWithImpl<$Res, $Val extends ManagerResponse>
    implements $ManagerResponseCopyWith<$Res> {
  _$ManagerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerResponse
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
                      as ManagerAccount,
          )
          as $Val,
    );
  }

  /// Create a copy of ManagerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManagerAccountCopyWith<$Res> get data {
    return $ManagerAccountCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ManagerResponseImplCopyWith<$Res>
    implements $ManagerResponseCopyWith<$Res> {
  factory _$$ManagerResponseImplCopyWith(
    _$ManagerResponseImpl value,
    $Res Function(_$ManagerResponseImpl) then,
  ) = __$$ManagerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, ManagerAccount data});

  @override
  $ManagerAccountCopyWith<$Res> get data;
}

/// @nodoc
class __$$ManagerResponseImplCopyWithImpl<$Res>
    extends _$ManagerResponseCopyWithImpl<$Res, _$ManagerResponseImpl>
    implements _$$ManagerResponseImplCopyWith<$Res> {
  __$$ManagerResponseImplCopyWithImpl(
    _$ManagerResponseImpl _value,
    $Res Function(_$ManagerResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManagerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$ManagerResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as ManagerAccount,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagerResponseImpl implements _ManagerResponse {
  const _$ManagerResponseImpl({required this.success, required this.data});

  factory _$ManagerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final ManagerAccount data;

  @override
  String toString() {
    return 'ManagerResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of ManagerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerResponseImplCopyWith<_$ManagerResponseImpl> get copyWith =>
      __$$ManagerResponseImplCopyWithImpl<_$ManagerResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagerResponseImplToJson(this);
  }
}

abstract class _ManagerResponse implements ManagerResponse {
  const factory _ManagerResponse({
    required final bool success,
    required final ManagerAccount data,
  }) = _$ManagerResponseImpl;

  factory _ManagerResponse.fromJson(Map<String, dynamic> json) =
      _$ManagerResponseImpl.fromJson;

  @override
  bool get success;
  @override
  ManagerAccount get data;

  /// Create a copy of ManagerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerResponseImplCopyWith<_$ManagerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
