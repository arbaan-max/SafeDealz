// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _Branch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  String get id => throw _privateConstructorUsedError;
  String get chainId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get contactName => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  String? get beneficiaryName => throw _privateConstructorUsedError;
  String? get ifsc => throw _privateConstructorUsedError;
  String? get accountNumberMasked => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  bool? get payoutReady => throw _privateConstructorUsedError;

  /// Serializes this Branch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call({
    String id,
    String chainId,
    String name,
    String code,
    bool active,
    String? address,
    String? city,
    String? contactName,
    String? contactPhone,
    String? beneficiaryName,
    String? ifsc,
    String? accountNumberMasked,
    String? accountNumber,
    bool? payoutReady,
  });
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chainId = null,
    Object? name = null,
    Object? code = null,
    Object? active = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? contactName = freezed,
    Object? contactPhone = freezed,
    Object? beneficiaryName = freezed,
    Object? ifsc = freezed,
    Object? accountNumberMasked = freezed,
    Object? accountNumber = freezed,
    Object? payoutReady = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            chainId: null == chainId
                ? _value.chainId
                : chainId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            active: null == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            contactName: freezed == contactName
                ? _value.contactName
                : contactName // ignore: cast_nullable_to_non_nullable
                      as String?,
            contactPhone: freezed == contactPhone
                ? _value.contactPhone
                : contactPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            beneficiaryName: freezed == beneficiaryName
                ? _value.beneficiaryName
                : beneficiaryName // ignore: cast_nullable_to_non_nullable
                      as String?,
            ifsc: freezed == ifsc
                ? _value.ifsc
                : ifsc // ignore: cast_nullable_to_non_nullable
                      as String?,
            accountNumberMasked: freezed == accountNumberMasked
                ? _value.accountNumberMasked
                : accountNumberMasked // ignore: cast_nullable_to_non_nullable
                      as String?,
            accountNumber: freezed == accountNumber
                ? _value.accountNumber
                : accountNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            payoutReady: freezed == payoutReady
                ? _value.payoutReady
                : payoutReady // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BranchImplCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
    _$BranchImpl value,
    $Res Function(_$BranchImpl) then,
  ) = __$$BranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String chainId,
    String name,
    String code,
    bool active,
    String? address,
    String? city,
    String? contactName,
    String? contactPhone,
    String? beneficiaryName,
    String? ifsc,
    String? accountNumberMasked,
    String? accountNumber,
    bool? payoutReady,
  });
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
    _$BranchImpl _value,
    $Res Function(_$BranchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chainId = null,
    Object? name = null,
    Object? code = null,
    Object? active = null,
    Object? address = freezed,
    Object? city = freezed,
    Object? contactName = freezed,
    Object? contactPhone = freezed,
    Object? beneficiaryName = freezed,
    Object? ifsc = freezed,
    Object? accountNumberMasked = freezed,
    Object? accountNumber = freezed,
    Object? payoutReady = freezed,
  }) {
    return _then(
      _$BranchImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        chainId: null == chainId
            ? _value.chainId
            : chainId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        active: null == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        contactName: freezed == contactName
            ? _value.contactName
            : contactName // ignore: cast_nullable_to_non_nullable
                  as String?,
        contactPhone: freezed == contactPhone
            ? _value.contactPhone
            : contactPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        beneficiaryName: freezed == beneficiaryName
            ? _value.beneficiaryName
            : beneficiaryName // ignore: cast_nullable_to_non_nullable
                  as String?,
        ifsc: freezed == ifsc
            ? _value.ifsc
            : ifsc // ignore: cast_nullable_to_non_nullable
                  as String?,
        accountNumberMasked: freezed == accountNumberMasked
            ? _value.accountNumberMasked
            : accountNumberMasked // ignore: cast_nullable_to_non_nullable
                  as String?,
        accountNumber: freezed == accountNumber
            ? _value.accountNumber
            : accountNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        payoutReady: freezed == payoutReady
            ? _value.payoutReady
            : payoutReady // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchImpl implements _Branch {
  const _$BranchImpl({
    required this.id,
    required this.chainId,
    required this.name,
    required this.code,
    required this.active,
    this.address,
    this.city,
    this.contactName,
    this.contactPhone,
    this.beneficiaryName,
    this.ifsc,
    this.accountNumberMasked,
    this.accountNumber,
    this.payoutReady,
  });

  factory _$BranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchImplFromJson(json);

  @override
  final String id;
  @override
  final String chainId;
  @override
  final String name;
  @override
  final String code;
  @override
  final bool active;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? contactName;
  @override
  final String? contactPhone;
  @override
  final String? beneficiaryName;
  @override
  final String? ifsc;
  @override
  final String? accountNumberMasked;
  @override
  final String? accountNumber;
  @override
  final bool? payoutReady;

  @override
  String toString() {
    return 'Branch(id: $id, chainId: $chainId, name: $name, code: $code, active: $active, address: $address, city: $city, contactName: $contactName, contactPhone: $contactPhone, beneficiaryName: $beneficiaryName, ifsc: $ifsc, accountNumberMasked: $accountNumberMasked, accountNumber: $accountNumber, payoutReady: $payoutReady)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chainId, chainId) || other.chainId == chainId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                other.beneficiaryName == beneficiaryName) &&
            (identical(other.ifsc, ifsc) || other.ifsc == ifsc) &&
            (identical(other.accountNumberMasked, accountNumberMasked) ||
                other.accountNumberMasked == accountNumberMasked) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.payoutReady, payoutReady) ||
                other.payoutReady == payoutReady));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    chainId,
    name,
    code,
    active,
    address,
    city,
    contactName,
    contactPhone,
    beneficiaryName,
    ifsc,
    accountNumberMasked,
    accountNumber,
    payoutReady,
  );

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchImplToJson(this);
  }
}

abstract class _Branch implements Branch {
  const factory _Branch({
    required final String id,
    required final String chainId,
    required final String name,
    required final String code,
    required final bool active,
    final String? address,
    final String? city,
    final String? contactName,
    final String? contactPhone,
    final String? beneficiaryName,
    final String? ifsc,
    final String? accountNumberMasked,
    final String? accountNumber,
    final bool? payoutReady,
  }) = _$BranchImpl;

  factory _Branch.fromJson(Map<String, dynamic> json) = _$BranchImpl.fromJson;

  @override
  String get id;
  @override
  String get chainId;
  @override
  String get name;
  @override
  String get code;
  @override
  bool get active;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get contactName;
  @override
  String? get contactPhone;
  @override
  String? get beneficiaryName;
  @override
  String? get ifsc;
  @override
  String? get accountNumberMasked;
  @override
  String? get accountNumber;
  @override
  bool? get payoutReady;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
