// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acceptance_detail_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryAcceptanceDetailProductItemRes
    _$InventoryAcceptanceDetailProductItemResFromJson(Map json) =>
        InventoryAcceptanceDetailProductItemRes(
          itemId: json['itemId'] as String,
          name: json['name'] as String,
          purchasePrice: (json['purchasePrice'] as num).toDouble(),
          salePrice: json['salePrice'] as String,
          qty: (json['qty'] as num).toDouble(),
          barcode: json['barcode'] as String,
        );

Map<String, dynamic> _$InventoryAcceptanceDetailProductItemResToJson(
        InventoryAcceptanceDetailProductItemRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'salePrice': instance.salePrice,
      'purchasePrice': instance.purchasePrice,
      'qty': instance.qty,
      'barcode': instance.barcode,
    };
