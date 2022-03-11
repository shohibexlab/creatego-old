// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductItemRes _$ProductItemResFromJson(Map json) => ProductItemRes(
      price: (json['price'] as num).toDouble(),
      name: json['name'] as String,
      itemId: json['itemId'] as String,
      groupId: json['groupId'] as String,
      imageUri: json['imageUri'] as String?,
      taxApplied: json['taxApplied'] as String?,
      barcode: json['barcode'] as String?,
      isRecommended: json['isRecommended'] as bool?,
    );

Map<String, dynamic> _$ProductItemResToJson(ProductItemRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'groupId': instance.groupId,
      'name': instance.name,
      'price': instance.price,
      'barcode': instance.barcode,
      'imageUri': instance.imageUri,
      'taxApplied': instance.taxApplied,
      'isRecommended': instance.isRecommended,
    };
