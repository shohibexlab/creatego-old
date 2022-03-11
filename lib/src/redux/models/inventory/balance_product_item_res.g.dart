// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_product_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryBalanceProductItemRes _$InventoryBalanceProductItemResFromJson(
        Map json) =>
    InventoryBalanceProductItemRes(
      salePrice: (json['salePrice'] as num).toDouble(),
      name: json['name'] as String,
      itemId: json['itemId'] as String,
      itemGroupId: json['itemGroupId'] as String,
      isMarking: json['isMarking'] as bool,
      purchasePrice: (json['purchasePrice'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      barcode: json['barcode'] as String?,
      qty: (json['qty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$InventoryBalanceProductItemResToJson(
        InventoryBalanceProductItemRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemGroupId': instance.itemGroupId,
      'name': instance.name,
      'salePrice': instance.salePrice,
      'isMarking': instance.isMarking,
      'purchasePrice': instance.purchasePrice,
      'barcode': instance.barcode,
      'imageUrl': instance.imageUrl,
      'qty': instance.qty,
    };
