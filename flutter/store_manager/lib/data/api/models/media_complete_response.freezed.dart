// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_complete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MediaCompleteResponse _$MediaCompleteResponseFromJson(
  Map<String, dynamic> json,
) {
  return _MediaCompleteResponse.fromJson(json);
}

/// @nodoc
mixin _$MediaCompleteResponse {
  bool get success => throw _privateConstructorUsedError;
  Data4 get data => throw _privateConstructorUsedError;

  /// Serializes this MediaCompleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaCompleteResponseCopyWith<MediaCompleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCompleteResponseCopyWith<$Res> {
  factory $MediaCompleteResponseCopyWith(
    MediaCompleteResponse value,
    $Res Function(MediaCompleteResponse) then,
  ) = _$MediaCompleteResponseCopyWithImpl<$Res, MediaCompleteResponse>;
  @useResult
  $Res call({bool success, Data4 data});

  $Data4CopyWith<$Res> get data;
}

/// @nodoc
class _$MediaCompleteResponseCopyWithImpl<
  $Res,
  $Val extends MediaCompleteResponse
>
    implements $MediaCompleteResponseCopyWith<$Res> {
  _$MediaCompleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaCompleteResponse
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
                      as Data4,
          )
          as $Val,
    );
  }

  /// Create a copy of MediaCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Data4CopyWith<$Res> get data {
    return $Data4CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaCompleteResponseImplCopyWith<$Res>
    implements $MediaCompleteResponseCopyWith<$Res> {
  factory _$$MediaCompleteResponseImplCopyWith(
    _$MediaCompleteResponseImpl value,
    $Res Function(_$MediaCompleteResponseImpl) then,
  ) = __$$MediaCompleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data4 data});

  @override
  $Data4CopyWith<$Res> get data;
}

/// @nodoc
class __$$MediaCompleteResponseImplCopyWithImpl<$Res>
    extends
        _$MediaCompleteResponseCopyWithImpl<$Res, _$MediaCompleteResponseImpl>
    implements _$$MediaCompleteResponseImplCopyWith<$Res> {
  __$$MediaCompleteResponseImplCopyWithImpl(
    _$MediaCompleteResponseImpl _value,
    $Res Function(_$MediaCompleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MediaCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$MediaCompleteResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data4,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaCompleteResponseImpl implements _MediaCompleteResponse {
  const _$MediaCompleteResponseImpl({
    required this.success,
    required this.data,
  });

  factory _$MediaCompleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaCompleteResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Data4 data;

  @override
  String toString() {
    return 'MediaCompleteResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaCompleteResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of MediaCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaCompleteResponseImplCopyWith<_$MediaCompleteResponseImpl>
  get copyWith =>
      __$$MediaCompleteResponseImplCopyWithImpl<_$MediaCompleteResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaCompleteResponseImplToJson(this);
  }
}

abstract class _MediaCompleteResponse implements MediaCompleteResponse {
  const factory _MediaCompleteResponse({
    required final bool success,
    required final Data4 data,
  }) = _$MediaCompleteResponseImpl;

  factory _MediaCompleteResponse.fromJson(Map<String, dynamic> json) =
      _$MediaCompleteResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Data4 get data;

  /// Create a copy of MediaCompleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaCompleteResponseImplCopyWith<_$MediaCompleteResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
