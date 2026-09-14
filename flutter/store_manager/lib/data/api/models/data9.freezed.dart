// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data9.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data9 _$Data9FromJson(Map<String, dynamic> json) {
  return _Data9.fromJson(json);
}

/// @nodoc
mixin _$Data9 {
  String? get objectKey => throw _privateConstructorUsedError;
  SignedUrl? get download => throw _privateConstructorUsedError;

  /// Serializes this Data9 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data9
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data9CopyWith<Data9> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data9CopyWith<$Res> {
  factory $Data9CopyWith(Data9 value, $Res Function(Data9) then) =
      _$Data9CopyWithImpl<$Res, Data9>;
  @useResult
  $Res call({String? objectKey, SignedUrl? download});

  $SignedUrlCopyWith<$Res>? get download;
}

/// @nodoc
class _$Data9CopyWithImpl<$Res, $Val extends Data9>
    implements $Data9CopyWith<$Res> {
  _$Data9CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data9
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? objectKey = freezed, Object? download = freezed}) {
    return _then(
      _value.copyWith(
            objectKey: freezed == objectKey
                ? _value.objectKey
                : objectKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            download: freezed == download
                ? _value.download
                : download // ignore: cast_nullable_to_non_nullable
                      as SignedUrl?,
          )
          as $Val,
    );
  }

  /// Create a copy of Data9
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignedUrlCopyWith<$Res>? get download {
    if (_value.download == null) {
      return null;
    }

    return $SignedUrlCopyWith<$Res>(_value.download!, (value) {
      return _then(_value.copyWith(download: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Data9ImplCopyWith<$Res> implements $Data9CopyWith<$Res> {
  factory _$$Data9ImplCopyWith(
    _$Data9Impl value,
    $Res Function(_$Data9Impl) then,
  ) = __$$Data9ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? objectKey, SignedUrl? download});

  @override
  $SignedUrlCopyWith<$Res>? get download;
}

/// @nodoc
class __$$Data9ImplCopyWithImpl<$Res>
    extends _$Data9CopyWithImpl<$Res, _$Data9Impl>
    implements _$$Data9ImplCopyWith<$Res> {
  __$$Data9ImplCopyWithImpl(
    _$Data9Impl _value,
    $Res Function(_$Data9Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data9
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? objectKey = freezed, Object? download = freezed}) {
    return _then(
      _$Data9Impl(
        objectKey: freezed == objectKey
            ? _value.objectKey
            : objectKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        download: freezed == download
            ? _value.download
            : download // ignore: cast_nullable_to_non_nullable
                  as SignedUrl?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Data9Impl implements _Data9 {
  const _$Data9Impl({this.objectKey, this.download});

  factory _$Data9Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data9ImplFromJson(json);

  @override
  final String? objectKey;
  @override
  final SignedUrl? download;

  @override
  String toString() {
    return 'Data9(objectKey: $objectKey, download: $download)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data9Impl &&
            (identical(other.objectKey, objectKey) ||
                other.objectKey == objectKey) &&
            (identical(other.download, download) ||
                other.download == download));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, objectKey, download);

  /// Create a copy of Data9
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data9ImplCopyWith<_$Data9Impl> get copyWith =>
      __$$Data9ImplCopyWithImpl<_$Data9Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data9ImplToJson(this);
  }
}

abstract class _Data9 implements Data9 {
  const factory _Data9({final String? objectKey, final SignedUrl? download}) =
      _$Data9Impl;

  factory _Data9.fromJson(Map<String, dynamic> json) = _$Data9Impl.fromJson;

  @override
  String? get objectKey;
  @override
  SignedUrl? get download;

  /// Create a copy of Data9
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data9ImplCopyWith<_$Data9Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
