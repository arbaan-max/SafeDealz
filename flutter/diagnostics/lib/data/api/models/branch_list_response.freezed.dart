// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BranchListResponse _$BranchListResponseFromJson(Map<String, dynamic> json) {
  return _BranchListResponse.fromJson(json);
}

/// @nodoc
mixin _$BranchListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Branch> get data => throw _privateConstructorUsedError;

  /// Serializes this BranchListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchListResponseCopyWith<BranchListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchListResponseCopyWith<$Res> {
  factory $BranchListResponseCopyWith(
    BranchListResponse value,
    $Res Function(BranchListResponse) then,
  ) = _$BranchListResponseCopyWithImpl<$Res, BranchListResponse>;
  @useResult
  $Res call({bool success, List<Branch> data});
}

/// @nodoc
class _$BranchListResponseCopyWithImpl<$Res, $Val extends BranchListResponse>
    implements $BranchListResponseCopyWith<$Res> {
  _$BranchListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchListResponse
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
                      as List<Branch>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BranchListResponseImplCopyWith<$Res>
    implements $BranchListResponseCopyWith<$Res> {
  factory _$$BranchListResponseImplCopyWith(
    _$BranchListResponseImpl value,
    $Res Function(_$BranchListResponseImpl) then,
  ) = __$$BranchListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Branch> data});
}

/// @nodoc
class __$$BranchListResponseImplCopyWithImpl<$Res>
    extends _$BranchListResponseCopyWithImpl<$Res, _$BranchListResponseImpl>
    implements _$$BranchListResponseImplCopyWith<$Res> {
  __$$BranchListResponseImplCopyWithImpl(
    _$BranchListResponseImpl _value,
    $Res Function(_$BranchListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$BranchListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Branch>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchListResponseImpl implements _BranchListResponse {
  const _$BranchListResponseImpl({
    required this.success,
    required final List<Branch> data,
  }) : _data = data;

  factory _$BranchListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchListResponseImplFromJson(json);

  @override
  final bool success;
  final List<Branch> _data;
  @override
  List<Branch> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BranchListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchListResponseImpl &&
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

  /// Create a copy of BranchListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchListResponseImplCopyWith<_$BranchListResponseImpl> get copyWith =>
      __$$BranchListResponseImplCopyWithImpl<_$BranchListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchListResponseImplToJson(this);
  }
}

abstract class _BranchListResponse implements BranchListResponse {
  const factory _BranchListResponse({
    required final bool success,
    required final List<Branch> data,
  }) = _$BranchListResponseImpl;

  factory _BranchListResponse.fromJson(Map<String, dynamic> json) =
      _$BranchListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<Branch> get data;

  /// Create a copy of BranchListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchListResponseImplCopyWith<_$BranchListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
