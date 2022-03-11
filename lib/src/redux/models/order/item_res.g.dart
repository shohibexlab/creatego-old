// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemRes _$OrderItemResFromJson(Map json) => OrderItemRes(
      id: json['id'] as String,
      itemId: json['itemId'] as String,
      name: json['name'] as String,
      qty: (json['qty'] as num).toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      taxExempt: (json['taxExempt'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      imageUri: json['imageUri'] as String?,
      taxApplied: json['taxApplied'] as String?,
      isDiscountStorno: json['isDiscountStorno'] as bool?,
      isStorno: json['isStorno'] as bool?,
      mark: json['mark'] as String?,
      orderDiscount: (json['orderDiscount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderItemResToJson(OrderItemRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'name': instance.name,
      'qty': instance.qty,
      'taxExempt': instance.taxExempt,
      'price': instance.price,
      'discount': instance.discount,
      'orderDiscount': instance.orderDiscount,
      'isStorno': instance.isStorno,
      'isDiscountStorno': instance.isDiscountStorno,
      'imageUri': instance.imageUri,
      'taxApplied': instance.taxApplied,
      'mark': instance.mark,
    };
