// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_sales_by_shift_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderListSalesByShiftRes _$TenderListSalesByShiftResFromJson(Map json) =>
    TenderListSalesByShiftRes(
      totalAmount: (json['totalAmount'] as num).toDouble(),
      salesDate: json['salesDate'] as String,
      isCanceled: json['isCanceled'] as bool,
      salesId: json['salesId'] as String,
      receiptNo: json['receiptNo'] as String,
    );

Map<String, dynamic> _$TenderListSalesByShiftResToJson(
        TenderListSalesByShiftRes instance) =>
    <String, dynamic>{
      'salesId': instance.salesId,
      'receiptNo': instance.receiptNo,
      'totalAmount': instance.totalAmount,
      'salesDate': instance.salesDate,
      'isCanceled': instance.isCanceled,
    };
