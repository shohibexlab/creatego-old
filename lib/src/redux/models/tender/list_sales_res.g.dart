// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_sales_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderListSales _$TenderListSalesFromJson(Map json) => TenderListSales(
      salesId: json['salesId'] as String,
      receiptNo: json['receiptNo'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      salesDate: json['salesDate'] as String,
      isCanceled: json['isCanceled'] as bool,
    );

Map<String, dynamic> _$TenderListSalesToJson(TenderListSales instance) =>
    <String, dynamic>{
      'salesId': instance.salesId,
      'receiptNo': instance.receiptNo,
      'totalAmount': instance.totalAmount,
      'salesDate': instance.salesDate,
      'isCanceled': instance.isCanceled,
    };
