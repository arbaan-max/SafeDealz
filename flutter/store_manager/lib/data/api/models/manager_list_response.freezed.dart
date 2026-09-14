// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manager_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ManagerListResponse _$ManagerListResponseFromJson(Map<String, dynamic> json) {
  return _ManagerListResponse.fromJson(json);
}

/// @nodoc
mixin _$ManagerListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<ManagerAccount> get data => throw _privateConstructorUsedError;

  /// Serializes this ManagerListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerListResponseCopyWith<ManagerListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerListResponseCopyWith<$Res> {
  factory $ManagerListResponseCopyWith(
    ManagerListResponse value,
    $Res Function(ManagerListResponse) then,
  ) = _$ManagerListResponseCopyWithImpl<$Res, ManagerListResponse>;
  @useResult
  $Res call({bool success, List<ManagerAccount> data});
}

/// @nodoc
class _$ManagerListResponseCopyWithImpl<$Res, $Val extends ManagerListResponse>
    implements $ManagerListResponseCopyWith<$Res> {
  _$ManagerListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerListResponse
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
                      as List<ManagerAccount>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ManagerListResponseImplCopyWith<$Res>
    implements $ManagerListResponseCopyWith<$Res> {
  factory _$$ManagerListResponseImplCopyWith(
    _$ManagerListResponseImpl value,
    $Res Function(_$ManagerListResponseImpl) then,
  ) = __$$ManagerListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<ManagerAccount> data});
}

/// @nodoc
class __$$ManagerListResponseImplCopyWithImpl<$Res>
    extends _$ManagerListResponseCopyWithImpl<$Res, _$ManagerListResponseImpl>
    implements _$$ManagerListResponseImplCopyWith<$Res> {
  __$$ManagerListResponseImplCopyWithImpl(
    _$ManagerListResponseImpl _value,
    $Res Function(_$ManagerListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManagerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$ManagerListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<ManagerAccount>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagerListResponseImpl implements _ManagerListResponse {
  const _$ManagerListResponseImpl({
    required this.success,
    required final List<ManagerAccount> data,
  }) : _data = data;

  factory _$ManagerListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerListResponseImplFromJson(json);

  @override
  final bool success;
  final List<ManagerAccount> _data;
  @override
  List<ManagerAccount> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ManagerListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerListResponseImpl &&
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

  /// Create a copy of ManagerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerListResponseImplCopyWith<_$ManagerListResponseImpl> get copyWith =>
      __$$ManagerListResponseImplCopyWithImpl<_$ManagerListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagerListResponseImplToJson(this);
  }
}

abstract class _ManagerListResponse implements ManagerListResponse {
  const factory _ManagerListResponse({
    required final bool success,
    required final List<ManagerAccount> data,
  }) = _$ManagerListResponseImpl;

  factory _ManagerListResponse.fromJson(Map<String, dynamic> json) =
      _$ManagerListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<ManagerAccount> get data;

  /// Create a copy of ManagerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerListResponseImplCopyWith<_$ManagerListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
