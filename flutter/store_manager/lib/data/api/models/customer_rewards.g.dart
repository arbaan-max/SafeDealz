// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_rewards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerRewards _$CustomerRewardsFromJson(Map<String, dynamic> json) =>
    _CustomerRewards(
      phone: json['phone'] as String?,
      customerName: json['customerName'] as String?,
      balances: (json['balances'] as List<dynamic>?)
          ?.map((e) => RewardBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
      entries: (json['entries'] as List<dynamic>?)
          ?.map((e) => RewardLedgerEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerRewardsToJson(_CustomerRewards instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'customerName': instance.customerName,
      'balances': instance.balances,
      'entries': instance.entries,
    };
