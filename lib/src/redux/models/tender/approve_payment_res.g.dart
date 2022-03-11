// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approve_payment_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderApprovePaymentRes _$TenderApprovePaymentResFromJson(Map json) =>
    TenderApprovePaymentRes(
      receiptNo: json['receiptNo'] as String,
      amount: (json['amount'] as num).toDouble(),
      paymentMethodCode: json['paymentMethodCode'] as String,
      paymentSectionCode: json['paymentSectionCode'] as String,
      balance: (json['balance'] as num).toDouble(),
      approvalDate: json['approvalDate'] as String,
      received: (json['received'] as num?)?.toDouble(),
      acquirerName: json['acquirerName'] as String?,
      approvalNo: json['approvalNo'] as String?,
      cardName: json['cardName'] as String?,
      cardNo: json['cardNo'] as String?,
      change: (json['change'] as num?)?.toDouble(),
      company: json['company'] as String?,
      companyNo: json['companyNo'] as String?,
      issuerName: json['issuerName'] as String?,
      vanResMsg: json['vanResMsg'] as String?,
    );

Map<String, dynamic> _$TenderApprovePaymentResToJson(
        TenderApprovePaymentRes instance) =>
    <String, dynamic>{
      'receiptNo': instance.receiptNo,
      'approvalNo': instance.approvalNo,
      'approvalDate': instance.approvalDate,
      'amount': instance.amount,
      'received': instance.received,
      'change': instance.change,
      'balance': instance.balance,
      'cardNo': instance.cardNo,
      'cardName': instance.cardName,
      'issuerName': instance.issuerName,
      'acquirerName': instance.acquirerName,
      'company': instance.company,
      'companyNo': instance.companyNo,
      'vanResMsg': instance.vanResMsg,
      'paymentSectionCode': instance.paymentSectionCode,
      'paymentMethodCode': instance.paymentMethodCode,
    };
