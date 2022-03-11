// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesAccount _$SalesAccountFromJson(Map<String, dynamic> json) => SalesAccount(
      salesAccountId: json['salesAccountId'] as String,
      paymentMethodCode: json['paymentMethodCode'] as String,
      paymentSectionCode: json['paymentSectionCode'] as String,
      receiptNo: json['receiptNo'] as String,
      approvalAmount: (json['approvalAmount'] as num).toDouble(),
      approvalDate: json['approvalDate'] as String,
      isCanceled: json['isCanceled'] as bool,
      salesAccountSno: json['salesAccountSno'] as int,
    );

Map<String, dynamic> _$SalesAccountToJson(SalesAccount instance) =>
    <String, dynamic>{
      'salesAccountId': instance.salesAccountId,
      'salesAccountSno': instance.salesAccountSno,
      'paymentMethodCode': instance.paymentMethodCode,
      'paymentSectionCode': instance.paymentSectionCode,
      'receiptNo': instance.receiptNo,
      'approvalAmount': instance.approvalAmount,
      'approvalDate': instance.approvalDate,
      'isCanceled': instance.isCanceled,
    };
