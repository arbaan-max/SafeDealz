// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment_sign_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TicketAttachmentSignResponse _$TicketAttachmentSignResponseFromJson(
  Map<String, dynamic> json,
) {
  return _TicketAttachmentSignResponse.fromJson(json);
}

/// @nodoc
mixin _$TicketAttachmentSignResponse {
  bool get success => throw _privateConstructorUsedError;
  TicketAttachmentSign get data => throw _privateConstructorUsedError;

  /// Serializes this TicketAttachmentSignResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketAttachmentSignResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketAttachmentSignResponseCopyWith<TicketAttachmentSignResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketAttachmentSignResponseCopyWith<$Res> {
  factory $TicketAttachmentSignResponseCopyWith(
    TicketAttachmentSignResponse value,
    $Res Function(TicketAttachmentSignResponse) then,
  ) =
      _$TicketAttachmentSignResponseCopyWithImpl<
        $Res,
        TicketAttachmentSignResponse
      >;
  @useResult
  $Res call({bool success, TicketAttachmentSign data});

  $TicketAttachmentSignCopyWith<$Res> get data;
}

/// @nodoc
class _$TicketAttachmentSignResponseCopyWithImpl<
  $Res,
  $Val extends TicketAttachmentSignResponse
>
    implements $TicketAttachmentSignResponseCopyWith<$Res> {
  _$TicketAttachmentSignResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketAttachmentSignResponse
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
                      as TicketAttachmentSign,
          )
          as $Val,
    );
  }

  /// Create a copy of TicketAttachmentSignResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketAttachmentSignCopyWith<$Res> get data {
    return $TicketAttachmentSignCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketAttachmentSignResponseImplCopyWith<$Res>
    implements $TicketAttachmentSignResponseCopyWith<$Res> {
  factory _$$TicketAttachmentSignResponseImplCopyWith(
    _$TicketAttachmentSignResponseImpl value,
    $Res Function(_$TicketAttachmentSignResponseImpl) then,
  ) = __$$TicketAttachmentSignResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, TicketAttachmentSign data});

  @override
  $TicketAttachmentSignCopyWith<$Res> get data;
}

/// @nodoc
class __$$TicketAttachmentSignResponseImplCopyWithImpl<$Res>
    extends
        _$TicketAttachmentSignResponseCopyWithImpl<
          $Res,
          _$TicketAttachmentSignResponseImpl
        >
    implements _$$TicketAttachmentSignResponseImplCopyWith<$Res> {
  __$$TicketAttachmentSignResponseImplCopyWithImpl(
    _$TicketAttachmentSignResponseImpl _value,
    $Res Function(_$TicketAttachmentSignResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketAttachmentSignResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$TicketAttachmentSignResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as TicketAttachmentSign,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketAttachmentSignResponseImpl
    implements _TicketAttachmentSignResponse {
  const _$TicketAttachmentSignResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$TicketAttachmentSignResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$TicketAttachmentSignResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final TicketAttachmentSign data;

  @override
  String toString() {
    return 'TicketAttachmentSignResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketAttachmentSignResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of TicketAttachmentSignResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketAttachmentSignResponseImplCopyWith<
    _$TicketAttachmentSignResponseImpl
  >
  get copyWith =>
      __$$TicketAttachmentSignResponseImplCopyWithImpl<
        _$TicketAttachmentSignResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketAttachmentSignResponseImplToJson(this);
  }
}

abstract class _TicketAttachmentSignResponse
    implements TicketAttachmentSignResponse {
  const factory _TicketAttachmentSignResponse({
    required final bool success,
    required final TicketAttachmentSign data,
  }) = _$TicketAttachmentSignResponseImpl;

  factory _TicketAttachmentSignResponse.fromJson(Map<String, dynamic> json) =
      _$TicketAttachmentSignResponseImpl.fromJson;

  @override
  bool get success;
  @override
  TicketAttachmentSign get data;

  /// Create a copy of TicketAttachmentSignResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketAttachmentSignResponseImplCopyWith<
    _$TicketAttachmentSignResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
