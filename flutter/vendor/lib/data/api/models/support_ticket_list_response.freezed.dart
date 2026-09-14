// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicketListResponse _$SupportTicketListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _SupportTicketListResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketListResponse {
  bool get success => throw _privateConstructorUsedError;
  List<SupportTicket> get data => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketListResponseCopyWith<SupportTicketListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketListResponseCopyWith<$Res> {
  factory $SupportTicketListResponseCopyWith(
    SupportTicketListResponse value,
    $Res Function(SupportTicketListResponse) then,
  ) = _$SupportTicketListResponseCopyWithImpl<$Res, SupportTicketListResponse>;
  @useResult
  $Res call({bool success, List<SupportTicket> data});
}

/// @nodoc
class _$SupportTicketListResponseCopyWithImpl<
  $Res,
  $Val extends SupportTicketListResponse
>
    implements $SupportTicketListResponseCopyWith<$Res> {
  _$SupportTicketListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketListResponse
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
                      as List<SupportTicket>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SupportTicketListResponseImplCopyWith<$Res>
    implements $SupportTicketListResponseCopyWith<$Res> {
  factory _$$SupportTicketListResponseImplCopyWith(
    _$SupportTicketListResponseImpl value,
    $Res Function(_$SupportTicketListResponseImpl) then,
  ) = __$$SupportTicketListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<SupportTicket> data});
}

/// @nodoc
class __$$SupportTicketListResponseImplCopyWithImpl<$Res>
    extends
        _$SupportTicketListResponseCopyWithImpl<
          $Res,
          _$SupportTicketListResponseImpl
        >
    implements _$$SupportTicketListResponseImplCopyWith<$Res> {
  __$$SupportTicketListResponseImplCopyWithImpl(
    _$SupportTicketListResponseImpl _value,
    $Res Function(_$SupportTicketListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$SupportTicketListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<SupportTicket>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketListResponseImpl implements _SupportTicketListResponse {
  const _$SupportTicketListResponseImpl({
    required this.success,
    required final List<SupportTicket> data,
  }) : _data = data;

  factory _$SupportTicketListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketListResponseImplFromJson(json);

  @override
  final bool success;
  final List<SupportTicket> _data;
  @override
  List<SupportTicket> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SupportTicketListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketListResponseImpl &&
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

  /// Create a copy of SupportTicketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketListResponseImplCopyWith<_$SupportTicketListResponseImpl>
  get copyWith =>
      __$$SupportTicketListResponseImplCopyWithImpl<
        _$SupportTicketListResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketListResponseImplToJson(this);
  }
}

abstract class _SupportTicketListResponse implements SupportTicketListResponse {
  const factory _SupportTicketListResponse({
    required final bool success,
    required final List<SupportTicket> data,
  }) = _$SupportTicketListResponseImpl;

  factory _SupportTicketListResponse.fromJson(Map<String, dynamic> json) =
      _$SupportTicketListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<SupportTicket> get data;

  /// Create a copy of SupportTicketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketListResponseImplCopyWith<_$SupportTicketListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
