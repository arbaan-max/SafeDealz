// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AdminResponse _$AdminResponseFromJson(Map<String, dynamic> json) {
  return _AdminResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminResponse {
  bool get success => throw _privateConstructorUsedError;
  AdminAccount get data => throw _privateConstructorUsedError;

  /// Serializes this AdminResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminResponseCopyWith<AdminResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminResponseCopyWith<$Res> {
  factory $AdminResponseCopyWith(
    AdminResponse value,
    $Res Function(AdminResponse) then,
  ) = _$AdminResponseCopyWithImpl<$Res, AdminResponse>;
  @useResult
  $Res call({bool success, AdminAccount data});

  $AdminAccountCopyWith<$Res> get data;
}

/// @nodoc
class _$AdminResponseCopyWithImpl<$Res, $Val extends AdminResponse>
    implements $AdminResponseCopyWith<$Res> {
  _$AdminResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminResponse
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
                      as AdminAccount,
          )
          as $Val,
    );
  }

  /// Create a copy of AdminResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminAccountCopyWith<$Res> get data {
    return $AdminAccountCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminResponseImplCopyWith<$Res>
    implements $AdminResponseCopyWith<$Res> {
  factory _$$AdminResponseImplCopyWith(
    _$AdminResponseImpl value,
    $Res Function(_$AdminResponseImpl) then,
  ) = __$$AdminResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, AdminAccount data});

  @override
  $AdminAccountCopyWith<$Res> get data;
}

/// @nodoc
class __$$AdminResponseImplCopyWithImpl<$Res>
    extends _$AdminResponseCopyWithImpl<$Res, _$AdminResponseImpl>
    implements _$$AdminResponseImplCopyWith<$Res> {
  __$$AdminResponseImplCopyWithImpl(
    _$AdminResponseImpl _value,
    $Res Function(_$AdminResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$AdminResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as AdminAccount,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminResponseImpl implements _AdminResponse {
  const _$AdminResponseImpl({required this.success, required this.data});

  factory _$AdminResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final AdminAccount data;

  @override
  String toString() {
    return 'AdminResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of AdminResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminResponseImplCopyWith<_$AdminResponseImpl> get copyWith =>
      __$$AdminResponseImplCopyWithImpl<_$AdminResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminResponseImplToJson(this);
  }
}

abstract class _AdminResponse implements AdminResponse {
  const factory _AdminResponse({
    required final bool success,
    required final AdminAccount data,
  }) = _$AdminResponseImpl;

  factory _AdminResponse.fromJson(Map<String, dynamic> json) =
      _$AdminResponseImpl.fromJson;

  @override
  bool get success;
  @override
  AdminAccount get data;

  /// Create a copy of AdminResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminResponseImplCopyWith<_$AdminResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
