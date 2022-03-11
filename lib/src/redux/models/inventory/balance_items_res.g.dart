// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_items_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryBalanceItemsRes _$InventoryBalanceItemsResFromJson(Map json) =>
    InventoryBalanceItemsRes(
      count: json['count'] as int,
      balanceProductItemResList:
          (json['balanceProductItemResList'] as List<dynamic>)
              .map((e) => InventoryBalanceProductItemRes.fromJson(e as Map))
              .toList(),
    );

Map<String, dynamic> _$InventoryBalanceItemsResToJson(
        InventoryBalanceItemsRes instance) =>
    <String, dynamic>{
      'count': instance.count,
      'balanceProductItemResList': instance.balanceProductItemResList,
    };
