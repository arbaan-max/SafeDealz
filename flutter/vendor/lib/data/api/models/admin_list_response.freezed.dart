// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AdminListResponse _$AdminListResponseFromJson(Map<String, dynamic> json) {
  return _AdminListResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<AdminAccount> get data => throw _privateConstructorUsedError;

  /// Serializes this AdminListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminListResponseCopyWith<AdminListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminListResponseCopyWith<$Res> {
  factory $AdminListResponseCopyWith(
    AdminListResponse value,
    $Res Function(AdminListResponse) then,
  ) = _$AdminListResponseCopyWithImpl<$Res, AdminListResponse>;
  @useResult
  $Res call({bool success, List<AdminAccount> data});
}

/// @nodoc
class _$AdminListResponseCopyWithImpl<$Res, $Val extends AdminListResponse>
    implements $AdminListResponseCopyWith<$Res> {
  _$AdminListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminListResponse
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
                      as List<AdminAccount>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AdminListResponseImplCopyWith<$Res>
    implements $AdminListResponseCopyWith<$Res> {
  factory _$$AdminListResponseImplCopyWith(
    _$AdminListResponseImpl value,
    $Res Function(_$AdminListResponseImpl) then,
  ) = __$$AdminListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<AdminAccount> data});
}

/// @nodoc
class __$$AdminListResponseImplCopyWithImpl<$Res>
    extends _$AdminListResponseCopyWithImpl<$Res, _$AdminListResponseImpl>
    implements _$$AdminListResponseImplCopyWith<$Res> {
  __$$AdminListResponseImplCopyWithImpl(
    _$AdminListResponseImpl _value,
    $Res Function(_$AdminListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$AdminListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<AdminAccount>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminListResponseImpl implements _AdminListResponse {
  const _$AdminListResponseImpl({
    required this.success,
    required final List<AdminAccount> data,
  }) : _data = data;

  factory _$AdminListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminListResponseImplFromJson(json);

  @override
  final bool success;
  final List<AdminAccount> _data;
  @override
  List<AdminAccount> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AdminListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminListResponseImpl &&
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

  /// Create a copy of AdminListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminListResponseImplCopyWith<_$AdminListResponseImpl> get copyWith =>
      __$$AdminListResponseImplCopyWithImpl<_$AdminListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminListResponseImplToJson(this);
  }
}

abstract class _AdminListResponse implements AdminListResponse {
  const factory _AdminListResponse({
    required final bool success,
    required final List<AdminAccount> data,
  }) = _$AdminListResponseImpl;

  factory _AdminListResponse.fromJson(Map<String, dynamic> json) =
      _$AdminListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<AdminAccount> get data;

  /// Create a copy of AdminListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminListResponseImplCopyWith<_$AdminListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
