// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assigned_store_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AssignedStoreListResponse _$AssignedStoreListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _AssignedStoreListResponse.fromJson(json);
}

/// @nodoc
mixin _$AssignedStoreListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<AssignedStore> get data => throw _privateConstructorUsedError;

  /// Serializes this AssignedStoreListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssignedStoreListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignedStoreListResponseCopyWith<AssignedStoreListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedStoreListResponseCopyWith<$Res> {
  factory $AssignedStoreListResponseCopyWith(
    AssignedStoreListResponse value,
    $Res Function(AssignedStoreListResponse) then,
  ) = _$AssignedStoreListResponseCopyWithImpl<$Res, AssignedStoreListResponse>;
  @useResult
  $Res call({bool success, List<AssignedStore> data});
}

/// @nodoc
class _$AssignedStoreListResponseCopyWithImpl<
  $Res,
  $Val extends AssignedStoreListResponse
>
    implements $AssignedStoreListResponseCopyWith<$Res> {
  _$AssignedStoreListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignedStoreListResponse
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
                      as List<AssignedStore>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AssignedStoreListResponseImplCopyWith<$Res>
    implements $AssignedStoreListResponseCopyWith<$Res> {
  factory _$$AssignedStoreListResponseImplCopyWith(
    _$AssignedStoreListResponseImpl value,
    $Res Function(_$AssignedStoreListResponseImpl) then,
  ) = __$$AssignedStoreListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<AssignedStore> data});
}

/// @nodoc
class __$$AssignedStoreListResponseImplCopyWithImpl<$Res>
    extends
        _$AssignedStoreListResponseCopyWithImpl<
          $Res,
          _$AssignedStoreListResponseImpl
        >
    implements _$$AssignedStoreListResponseImplCopyWith<$Res> {
  __$$AssignedStoreListResponseImplCopyWithImpl(
    _$AssignedStoreListResponseImpl _value,
    $Res Function(_$AssignedStoreListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssignedStoreListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$AssignedStoreListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<AssignedStore>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignedStoreListResponseImpl implements _AssignedStoreListResponse {
  const _$AssignedStoreListResponseImpl({
    required this.success,
    required final List<AssignedStore> data,
  }) : _data = data;

  factory _$AssignedStoreListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignedStoreListResponseImplFromJson(json);

  @override
  final bool success;
  final List<AssignedStore> _data;
  @override
  List<AssignedStore> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AssignedStoreListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignedStoreListResponseImpl &&
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

  /// Create a copy of AssignedStoreListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignedStoreListResponseImplCopyWith<_$AssignedStoreListResponseImpl>
  get copyWith =>
      __$$AssignedStoreListResponseImplCopyWithImpl<
        _$AssignedStoreListResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignedStoreListResponseImplToJson(this);
  }
}

abstract class _AssignedStoreListResponse implements AssignedStoreListResponse {
  const factory _AssignedStoreListResponse({
    required final bool success,
    required final List<AssignedStore> data,
  }) = _$AssignedStoreListResponseImpl;

  factory _AssignedStoreListResponse.fromJson(Map<String, dynamic> json) =
      _$AssignedStoreListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<AssignedStore> get data;

  /// Create a copy of AssignedStoreListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignedStoreListResponseImplCopyWith<_$AssignedStoreListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
