// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data5.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data5 _$Data5FromJson(Map<String, dynamic> json) {
  return _Data5.fromJson(json);
}

/// @nodoc
mixin _$Data5 {
  bool? get sent => throw _privateConstructorUsedError;
  bool? get stub => throw _privateConstructorUsedError;

  /// Serializes this Data5 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Data5CopyWith<Data5> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Data5CopyWith<$Res> {
  factory $Data5CopyWith(Data5 value, $Res Function(Data5) then) =
      _$Data5CopyWithImpl<$Res, Data5>;
  @useResult
  $Res call({bool? sent, bool? stub});
}

/// @nodoc
class _$Data5CopyWithImpl<$Res, $Val extends Data5>
    implements $Data5CopyWith<$Res> {
  _$Data5CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data5
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sent = freezed, Object? stub = freezed}) {
    return _then(
      _value.copyWith(
            sent: freezed == sent
                ? _value.sent
                : sent // ignore: cast_nullable_to_non_nullable
                      as bool?,
            stub: freezed == stub
                ? _value.stub
                : stub // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Data5ImplCopyWith<$Res> implements $Data5CopyWith<$Res> {
  factory _$$Data5ImplCopyWith(
    _$Data5Impl value,
    $Res Function(_$Data5Impl) then,
  ) = __$$Data5ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? sent, bool? stub});
}

/// @nodoc
class __$$Data5ImplCopyWithImpl<$Res>
    extends _$Data5CopyWithImpl<$Res, _$Data5Impl>
    implements _$$Data5ImplCopyWith<$Res> {
  __$$Data5ImplCopyWithImpl(
    _$Data5Impl _value,
    $Res Function(_$Data5Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Data5
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sent = freezed, Object? stub = freezed}) {
    return _then(
      _$Data5Impl(
        sent: freezed == sent
            ? _value.sent
            : sent // ignore: cast_nullable_to_non_nullable
                  as bool?,
        stub: freezed == stub
            ? _value.stub
            : stub // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Data5Impl implements _Data5 {
  const _$Data5Impl({this.sent, this.stub});

  factory _$Data5Impl.fromJson(Map<String, dynamic> json) =>
      _$$Data5ImplFromJson(json);

  @override
  final bool? sent;
  @override
  final bool? stub;

  @override
  String toString() {
    return 'Data5(sent: $sent, stub: $stub)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data5Impl &&
            (identical(other.sent, sent) || other.sent == sent) &&
            (identical(other.stub, stub) || other.stub == stub));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sent, stub);

  /// Create a copy of Data5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Data5ImplCopyWith<_$Data5Impl> get copyWith =>
      __$$Data5ImplCopyWithImpl<_$Data5Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Data5ImplToJson(this);
  }
}

abstract class _Data5 implements Data5 {
  const factory _Data5({final bool? sent, final bool? stub}) = _$Data5Impl;

  factory _Data5.fromJson(Map<String, dynamic> json) = _$Data5Impl.fromJson;

  @override
  bool? get sent;
  @override
  bool? get stub;

  /// Create a copy of Data5
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Data5ImplCopyWith<_$Data5Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
