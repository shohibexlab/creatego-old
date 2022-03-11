// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_orders_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderListOrdersRes _$OrderListOrdersResFromJson(Map json) => OrderListOrdersRes(
      list: (json['list'] as List<dynamic>)
          .map((e) => OrderListItemRes.fromJson(e as Map))
          .toList(),
    );

Map<String, dynamic> _$OrderListOrdersResToJson(OrderListOrdersRes instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
