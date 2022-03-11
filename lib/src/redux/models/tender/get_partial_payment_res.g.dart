// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_partial_payment_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderPartialPaymentRes _$TenderPartialPaymentResFromJson(Map json) =>
    TenderPartialPaymentRes(
      receiptNo: json['receiptNo'] as String,
      salesAccountSno: json['salesAccountSno'] as int,
      isCanceled: json['isCanceled'] as bool,
      isCanVoid: json['isCanVoid'] as bool,
      amount: (json['amount'] as num).toDouble(),
      paymentMethodCode: json['paymentMethodCode'] as String,
      paymentSectionCode: json['paymentSectionCode'] as String,
      approvalDate: json['approvalDate'] as String,
      acquirerName: json['acquirerName'] as String?,
      approvalNo: json['approvalNo'] as String?,
      cardName: json['cardName'] as String?,
      cardNo: json['cardNo'] as String?,
      company: json['company'] as String?,
      companyNo: json['companyNo'] as String?,
    );

Map<String, dynamic> _$TenderPartialPaymentResToJson(
        TenderPartialPaymentRes instance) =>
    <String, dynamic>{
      'salesAccountSno': instance.salesAccountSno,
      'receiptNo': instance.receiptNo,
      'approvalNo': instance.approvalNo,
      'approvalDate': instance.approvalDate,
      'amount': instance.amount,
      'cardName': instance.cardName,
      'cardNo': instance.cardNo,
      'acquirerName': instance.acquirerName,
      'company': instance.company,
      'companyNo': instance.companyNo,
      'paymentSectionCode': instance.paymentSectionCode,
      'paymentMethodCode': instance.paymentMethodCode,
      'isCanVoid': instance.isCanVoid,
      'isCanceled': instance.isCanceled,
    };
