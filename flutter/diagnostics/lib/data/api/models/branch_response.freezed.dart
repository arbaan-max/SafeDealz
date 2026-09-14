// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BranchResponse _$BranchResponseFromJson(Map<String, dynamic> json) {
  return _BranchResponse.fromJson(json);
}

/// @nodoc
mixin _$BranchResponse {
  bool get success => throw _privateConstructorUsedError;
  Branch get data => throw _privateConstructorUsedError;

  /// Serializes this BranchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchResponseCopyWith<BranchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchResponseCopyWith<$Res> {
  factory $BranchResponseCopyWith(
    BranchResponse value,
    $Res Function(BranchResponse) then,
  ) = _$BranchResponseCopyWithImpl<$Res, BranchResponse>;
  @useResult
  $Res call({bool success, Branch data});

  $BranchCopyWith<$Res> get data;
}

/// @nodoc
class _$BranchResponseCopyWithImpl<$Res, $Val extends BranchResponse>
    implements $BranchResponseCopyWith<$Res> {
  _$BranchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchResponse
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
                      as Branch,
          )
          as $Val,
    );
  }

  /// Create a copy of BranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res> get data {
    return $BranchCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BranchResponseImplCopyWith<$Res>
    implements $BranchResponseCopyWith<$Res> {
  factory _$$BranchResponseImplCopyWith(
    _$BranchResponseImpl value,
    $Res Function(_$BranchResponseImpl) then,
  ) = __$$BranchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Branch data});

  @override
  $BranchCopyWith<$Res> get data;
}

/// @nodoc
class __$$BranchResponseImplCopyWithImpl<$Res>
    extends _$BranchResponseCopyWithImpl<$Res, _$BranchResponseImpl>
    implements _$$BranchResponseImplCopyWith<$Res> {
  __$$BranchResponseImplCopyWithImpl(
    _$BranchResponseImpl _value,
    $Res Function(_$BranchResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$BranchResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Branch,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchResponseImpl implements _BranchResponse {
  const _$BranchResponseImpl({required this.success, required this.data});

  factory _$BranchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Branch data;

  @override
  String toString() {
    return 'BranchResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of BranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchResponseImplCopyWith<_$BranchResponseImpl> get copyWith =>
      __$$BranchResponseImplCopyWithImpl<_$BranchResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchResponseImplToJson(this);
  }
}

abstract class _BranchResponse implements BranchResponse {
  const factory _BranchResponse({
    required final bool success,
    required final Branch data,
  }) = _$BranchResponseImpl;

  factory _BranchResponse.fromJson(Map<String, dynamic> json) =
      _$BranchResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Branch get data;

  /// Create a copy of BranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchResponseImplCopyWith<_$BranchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
