// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acceptance_list_product_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryAcceptanceListProductItemRes
    _$InventoryAcceptanceListProductItemResFromJson(Map json) =>
        InventoryAcceptanceListProductItemRes(
          price: (json['price'] as num).toDouble(),
          name: json['name'] as String,
          date: json['date'] as String,
        );

Map<String, dynamic> _$InventoryAcceptanceListProductItemResToJson(
        InventoryAcceptanceListProductItemRes instance) =>
    <String, dynamic>{
      'date': instance.date,
      'name': instance.name,
      'price': instance.price,
    };
