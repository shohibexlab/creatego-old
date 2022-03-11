// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderListItemRes _$OrderListItemResFromJson(Map json) => OrderListItemRes(
      tableId: json['tableId'] as String,
      orderId: json['orderId'] as String,
      totalQty: (json['totalQty'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      lastRevisionDatetime: json['lastRevisionDatetime'] as String,
    );

Map<String, dynamic> _$OrderListItemResToJson(OrderListItemRes instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'tableId': instance.tableId,
      'lastRevisionDatetime': instance.lastRevisionDatetime,
      'totalQty': instance.totalQty,
      'totalAmount': instance.totalAmount,
    };
