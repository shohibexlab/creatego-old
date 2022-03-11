// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summarize_by_items_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummarizeByItemsRes _$SummarizeByItemsResFromJson(Map json) =>
    SummarizeByItemsRes(
      itemId: json['itemId'] as String,
      itemName: json['itemName'] as String,
      price: (json['price'] as num).toDouble(),
      barcode: json['barcode'] as String?,
      imageUri: json['imageUri'] as String?,
      totalQty: (json['totalQty'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$SummarizeByItemsResToJson(
        SummarizeByItemsRes instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'price': instance.price,
      'barcode': instance.barcode,
      'imageUri': instance.imageUri,
      'totalQty': instance.totalQty,
      'totalAmount': instance.totalAmount,
    };
