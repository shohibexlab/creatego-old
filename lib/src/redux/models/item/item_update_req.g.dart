// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_update_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemUpdateReq _$ItemUpdateReqFromJson(Map json) => ItemUpdateReq(
      itemId: json['itemId'] as String,
      itemGroupId: json['itemGroupId'] as String?,
      name: json['name'] as String?,
      salePrice: (json['salePrice'] as num?)?.toDouble(),
      purchasePrice: (json['purchasePrice'] as num?)?.toDouble(),
      isMarking: json['isMarking'] as bool?,
      barcode: json['barcode'] as String?,
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$ItemUpdateReqToJson(ItemUpdateReq instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemGroupId': instance.itemGroupId,
      'name': instance.name,
      'barcode': instance.barcode,
      'salePrice': instance.salePrice,
      'purchasePrice': instance.purchasePrice,
      'isMarking': instance.isMarking,
      'isFavorite': instance.isFavorite,
    };
