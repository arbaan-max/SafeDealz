// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentInstruction {

 String? get id; String? get dealId; String? get branchId; PaymentInstructionStatus? get status; int? get amountPaise; int? get feePaise; String? get beneficiaryName; String? get accountNumberMasked; String? get ifsc; String? get providerTransferId; String? get providerStatus; List<PaymentAttempt>? get attempts;
/// Create a copy of PaymentInstruction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentInstructionCopyWith<PaymentInstruction> get copyWith => _$PaymentInstructionCopyWithImpl<PaymentInstruction>(this as PaymentInstruction, _$identity);

  /// Serializes this PaymentInstruction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentInstruction&&(identical(other.id, id) || other.id == id)&&(identical(other.dealId, dealId) || other.dealId == dealId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.status, status) || other.status == status)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.feePaise, feePaise) || other.feePaise == feePaise)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.accountNumberMasked, accountNumberMasked) || other.accountNumberMasked == accountNumberMasked)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.providerTransferId, providerTransferId) || other.providerTransferId == providerTransferId)&&(identical(other.providerStatus, providerStatus) || other.providerStatus == providerStatus)&&const DeepCollectionEquality().equals(other.attempts, attempts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dealId,branchId,status,amountPaise,feePaise,beneficiaryName,accountNumberMasked,ifsc,providerTransferId,providerStatus,const DeepCollectionEquality().hash(attempts));

@override
String toString() {
  return 'PaymentInstruction(id: $id, dealId: $dealId, branchId: $branchId, status: $status, amountPaise: $amountPaise, feePaise: $feePaise, beneficiaryName: $beneficiaryName, accountNumberMasked: $accountNumberMasked, ifsc: $ifsc, providerTransferId: $providerTransferId, providerStatus: $providerStatus, attempts: $attempts)';
}


}

/// @nodoc
abstract mixin class $PaymentInstructionCopyWith<$Res>  {
  factory $PaymentInstructionCopyWith(PaymentInstruction value, $Res Function(PaymentInstruction) _then) = _$PaymentInstructionCopyWithImpl;
@useResult
$Res call({
 String? id, String? dealId, String? branchId, PaymentInstructionStatus? status, int? amountPaise, int? feePaise, String? beneficiaryName, String? accountNumberMasked, String? ifsc, String? providerTransferId, String? providerStatus, List<PaymentAttempt>? attempts
});




}
/// @nodoc
class _$PaymentInstructionCopyWithImpl<$Res>
    implements $PaymentInstructionCopyWith<$Res> {
  _$PaymentInstructionCopyWithImpl(this._self, this._then);

  final PaymentInstruction _self;
  final $Res Function(PaymentInstruction) _then;

/// Create a copy of PaymentInstruction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? dealId = freezed,Object? branchId = freezed,Object? status = freezed,Object? amountPaise = freezed,Object? feePaise = freezed,Object? beneficiaryName = freezed,Object? accountNumberMasked = freezed,Object? ifsc = freezed,Object? providerTransferId = freezed,Object? providerStatus = freezed,Object? attempts = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,dealId: freezed == dealId ? _self.dealId : dealId // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentInstructionStatus?,amountPaise: freezed == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int?,feePaise: freezed == feePaise ? _self.feePaise : feePaise // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,accountNumberMasked: freezed == accountNumberMasked ? _self.accountNumberMasked : accountNumberMasked // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,providerTransferId: freezed == providerTransferId ? _self.providerTransferId : providerTransferId // ignore: cast_nullable_to_non_nullable
as String?,providerStatus: freezed == providerStatus ? _self.providerStatus : providerStatus // ignore: cast_nullable_to_non_nullable
as String?,attempts: freezed == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as List<PaymentAttempt>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentInstruction].
extension PaymentInstructionPatterns on PaymentInstruction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentInstruction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentInstruction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentInstruction value)  $default,){
final _that = this;
switch (_that) {
case _PaymentInstruction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentInstruction value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentInstruction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? dealId,  String? branchId,  PaymentInstructionStatus? status,  int? amountPaise,  int? feePaise,  String? beneficiaryName,  String? accountNumberMasked,  String? ifsc,  String? providerTransferId,  String? providerStatus,  List<PaymentAttempt>? attempts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentInstruction() when $default != null:
return $default(_that.id,_that.dealId,_that.branchId,_that.status,_that.amountPaise,_that.feePaise,_that.beneficiaryName,_that.accountNumberMasked,_that.ifsc,_that.providerTransferId,_that.providerStatus,_that.attempts);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? dealId,  String? branchId,  PaymentInstructionStatus? status,  int? amountPaise,  int? feePaise,  String? beneficiaryName,  String? accountNumberMasked,  String? ifsc,  String? providerTransferId,  String? providerStatus,  List<PaymentAttempt>? attempts)  $default,) {final _that = this;
switch (_that) {
case _PaymentInstruction():
return $default(_that.id,_that.dealId,_that.branchId,_that.status,_that.amountPaise,_that.feePaise,_that.beneficiaryName,_that.accountNumberMasked,_that.ifsc,_that.providerTransferId,_that.providerStatus,_that.attempts);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? dealId,  String? branchId,  PaymentInstructionStatus? status,  int? amountPaise,  int? feePaise,  String? beneficiaryName,  String? accountNumberMasked,  String? ifsc,  String? providerTransferId,  String? providerStatus,  List<PaymentAttempt>? attempts)?  $default,) {final _that = this;
switch (_that) {
case _PaymentInstruction() when $default != null:
return $default(_that.id,_that.dealId,_that.branchId,_that.status,_that.amountPaise,_that.feePaise,_that.beneficiaryName,_that.accountNumberMasked,_that.ifsc,_that.providerTransferId,_that.providerStatus,_that.attempts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentInstruction implements PaymentInstruction {
  const _PaymentInstruction({this.id, this.dealId, this.branchId, this.status, this.amountPaise, this.feePaise, this.beneficiaryName, this.accountNumberMasked, this.ifsc, this.providerTransferId, this.providerStatus, final  List<PaymentAttempt>? attempts}): _attempts = attempts;
  factory _PaymentInstruction.fromJson(Map<String, dynamic> json) => _$PaymentInstructionFromJson(json);

@override final  String? id;
@override final  String? dealId;
@override final  String? branchId;
@override final  PaymentInstructionStatus? status;
@override final  int? amountPaise;
@override final  int? feePaise;
@override final  String? beneficiaryName;
@override final  String? accountNumberMasked;
@override final  String? ifsc;
@override final  String? providerTransferId;
@override final  String? providerStatus;
 final  List<PaymentAttempt>? _attempts;
@override List<PaymentAttempt>? get attempts {
  final value = _attempts;
  if (value == null) return null;
  if (_attempts is EqualUnmodifiableListView) return _attempts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PaymentInstruction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentInstructionCopyWith<_PaymentInstruction> get copyWith => __$PaymentInstructionCopyWithImpl<_PaymentInstruction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentInstructionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentInstruction&&(identical(other.id, id) || other.id == id)&&(identical(other.dealId, dealId) || other.dealId == dealId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.status, status) || other.status == status)&&(identical(other.amountPaise, amountPaise) || other.amountPaise == amountPaise)&&(identical(other.feePaise, feePaise) || other.feePaise == feePaise)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.accountNumberMasked, accountNumberMasked) || other.accountNumberMasked == accountNumberMasked)&&(identical(other.ifsc, ifsc) || other.ifsc == ifsc)&&(identical(other.providerTransferId, providerTransferId) || other.providerTransferId == providerTransferId)&&(identical(other.providerStatus, providerStatus) || other.providerStatus == providerStatus)&&const DeepCollectionEquality().equals(other._attempts, _attempts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dealId,branchId,status,amountPaise,feePaise,beneficiaryName,accountNumberMasked,ifsc,providerTransferId,providerStatus,const DeepCollectionEquality().hash(_attempts));

@override
String toString() {
  return 'PaymentInstruction(id: $id, dealId: $dealId, branchId: $branchId, status: $status, amountPaise: $amountPaise, feePaise: $feePaise, beneficiaryName: $beneficiaryName, accountNumberMasked: $accountNumberMasked, ifsc: $ifsc, providerTransferId: $providerTransferId, providerStatus: $providerStatus, attempts: $attempts)';
}


}

/// @nodoc
abstract mixin class _$PaymentInstructionCopyWith<$Res> implements $PaymentInstructionCopyWith<$Res> {
  factory _$PaymentInstructionCopyWith(_PaymentInstruction value, $Res Function(_PaymentInstruction) _then) = __$PaymentInstructionCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? dealId, String? branchId, PaymentInstructionStatus? status, int? amountPaise, int? feePaise, String? beneficiaryName, String? accountNumberMasked, String? ifsc, String? providerTransferId, String? providerStatus, List<PaymentAttempt>? attempts
});




}
/// @nodoc
class __$PaymentInstructionCopyWithImpl<$Res>
    implements _$PaymentInstructionCopyWith<$Res> {
  __$PaymentInstructionCopyWithImpl(this._self, this._then);

  final _PaymentInstruction _self;
  final $Res Function(_PaymentInstruction) _then;

/// Create a copy of PaymentInstruction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? dealId = freezed,Object? branchId = freezed,Object? status = freezed,Object? amountPaise = freezed,Object? feePaise = freezed,Object? beneficiaryName = freezed,Object? accountNumberMasked = freezed,Object? ifsc = freezed,Object? providerTransferId = freezed,Object? providerStatus = freezed,Object? attempts = freezed,}) {
  return _then(_PaymentInstruction(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,dealId: freezed == dealId ? _self.dealId : dealId // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentInstructionStatus?,amountPaise: freezed == amountPaise ? _self.amountPaise : amountPaise // ignore: cast_nullable_to_non_nullable
as int?,feePaise: freezed == feePaise ? _self.feePaise : feePaise // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,accountNumberMasked: freezed == accountNumberMasked ? _self.accountNumberMasked : accountNumberMasked // ignore: cast_nullable_to_non_nullable
as String?,ifsc: freezed == ifsc ? _self.ifsc : ifsc // ignore: cast_nullable_to_non_nullable
as String?,providerTransferId: freezed == providerTransferId ? _self.providerTransferId : providerTransferId // ignore: cast_nullable_to_non_nullable
as String?,providerStatus: freezed == providerStatus ? _self.providerStatus : providerStatus // ignore: cast_nullable_to_non_nullable
as String?,attempts: freezed == attempts ? _self._attempts : attempts // ignore: cast_nullable_to_non_nullable
as List<PaymentAttempt>?,
  ));
}


}

// dart format on
