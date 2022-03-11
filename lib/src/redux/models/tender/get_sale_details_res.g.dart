// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sale_details_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderGetSaleDetailsRes _$TenderGetSaleDetailsResFromJson(Map json) =>
    TenderGetSaleDetailsRes(
      salesId: json['salesId'] as String,
      receiptNo: json['receiptNo'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      salesDate: json['salesDate'] as String,
      isCanceled: json['isCanceled'] as bool,
      salesAccounts: (json['salesAccounts'] as List<dynamic>)
          .map(
              (e) => SalesAccount.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      salesItems: (json['salesItems'] as List<dynamic>)
          .map((e) => SalesItem.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      storeName: json['storeName'] as String,
      storeAddress: json['storeAddress'] as String,
      tax: (json['tax'] as num).toDouble(),
      supplyValue: (json['supplyValue'] as num).toDouble(),
      cancelType: json['cancelType'] as String?,
      inn: json['inn'] as String?,
    );

Map<String, dynamic> _$TenderGetSaleDetailsResToJson(
        TenderGetSaleDetailsRes instance) =>
    <String, dynamic>{
      'salesId': instance.salesId,
      'receiptNo': instance.receiptNo,
      'storeName': instance.storeName,
      'storeAddress': instance.storeAddress,
      'inn': instance.inn,
      'totalAmount': instance.totalAmount,
      'supplyValue': instance.supplyValue,
      'tax': instance.tax,
      'salesDate': instance.salesDate,
      'isCanceled': instance.isCanceled,
      'cancelType': instance.cancelType,
      'salesAccounts': instance.salesAccounts,
      'salesItems': instance.salesItems,
    };
