// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderGetOrderRes _$OrderGetOrderResFromJson(Map json) => OrderGetOrderRes(
      discount: (json['discount'] as num).toDouble(),
      orderId: json['orderId'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemRes.fromJson(e as Map))
          .toList(),
      balance: (json['balance'] as num).toDouble(),
      markup: (json['markup'] as num).toDouble(),
      tableId: json['tableId'] as String,
      taxExemptReceived: (json['taxExemptReceived'] as num).toDouble(),
      totalDue: (json['totalDue'] as num).toDouble(),
      totalReceived: (json['totalReceived'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderGetOrderResToJson(OrderGetOrderRes instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'tableId': instance.tableId,
      'items': instance.items,
      'discount': instance.discount,
      'markup': instance.markup,
      'totalDue': instance.totalDue,
      'totalReceived': instance.totalReceived,
      'taxExemptReceived': instance.taxExemptReceived,
      'balance': instance.balance,
    };
