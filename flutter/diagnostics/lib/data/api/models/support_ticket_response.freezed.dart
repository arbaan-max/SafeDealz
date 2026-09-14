// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicketResponse _$SupportTicketResponseFromJson(
  Map<String, dynamic> json,
) {
  return _SupportTicketResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketResponse {
  bool get success => throw _privateConstructorUsedError;
  SupportTicket get data => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketResponseCopyWith<SupportTicketResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketResponseCopyWith<$Res> {
  factory $SupportTicketResponseCopyWith(
    SupportTicketResponse value,
    $Res Function(SupportTicketResponse) then,
  ) = _$SupportTicketResponseCopyWithImpl<$Res, SupportTicketResponse>;
  @useResult
  $Res call({bool success, SupportTicket data});

  $SupportTicketCopyWith<$Res> get data;
}

/// @nodoc
class _$SupportTicketResponseCopyWithImpl<
  $Res,
  $Val extends SupportTicketResponse
>
    implements $SupportTicketResponseCopyWith<$Res> {
  _$SupportTicketResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketResponse
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
                      as SupportTicket,
          )
          as $Val,
    );
  }

  /// Create a copy of SupportTicketResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketCopyWith<$Res> get data {
    return $SupportTicketCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportTicketResponseImplCopyWith<$Res>
    implements $SupportTicketResponseCopyWith<$Res> {
  factory _$$SupportTicketResponseImplCopyWith(
    _$SupportTicketResponseImpl value,
    $Res Function(_$SupportTicketResponseImpl) then,
  ) = __$$SupportTicketResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, SupportTicket data});

  @override
  $SupportTicketCopyWith<$Res> get data;
}

/// @nodoc
class __$$SupportTicketResponseImplCopyWithImpl<$Res>
    extends
        _$SupportTicketResponseCopyWithImpl<$Res, _$SupportTicketResponseImpl>
    implements _$$SupportTicketResponseImplCopyWith<$Res> {
  __$$SupportTicketResponseImplCopyWithImpl(
    _$SupportTicketResponseImpl _value,
    $Res Function(_$SupportTicketResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicketResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$SupportTicketResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as SupportTicket,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketResponseImpl implements _SupportTicketResponse {
  const _$SupportTicketResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$SupportTicketResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final SupportTicket data;

  @override
  String toString() {
    return 'SupportTicketResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of SupportTicketResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketResponseImplCopyWith<_$SupportTicketResponseImpl>
  get copyWith =>
      __$$SupportTicketResponseImplCopyWithImpl<_$SupportTicketResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketResponseImplToJson(this);
  }
}

abstract class _SupportTicketResponse implements SupportTicketResponse {
  const factory _SupportTicketResponse({
    required final bool success,
    required final SupportTicket data,
  }) = _$SupportTicketResponseImpl;

  factory _SupportTicketResponse.fromJson(Map<String, dynamic> json) =
      _$SupportTicketResponseImpl.fromJson;

  @override
  bool get success;
  @override
  SupportTicket get data;

  /// Create a copy of SupportTicketResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketResponseImplCopyWith<_$SupportTicketResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
