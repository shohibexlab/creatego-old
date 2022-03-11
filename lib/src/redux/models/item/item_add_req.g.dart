// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_add_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemAddReq _$ItemAddReqFromJson(Map json) => ItemAddReq(
      name: json['name'] as String,
      salePrice: (json['salePrice'] as num).toDouble(),
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      isMarking: json['isMarking'] as bool?,
      itemGroupId: json['itemGroupId'] as String?,
      barcode: json['barcode'] as String?,
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$ItemAddReqToJson(ItemAddReq instance) =>
    <String, dynamic>{
      'itemGroupId': instance.itemGroupId,
      'name': instance.name,
      'barcode': instance.barcode,
      'salePrice': instance.salePrice,
      'purchasePrice': instance.purchasePrice,
      'isMarking': instance.isMarking,
      'isFavorite': instance.isFavorite,
    };
