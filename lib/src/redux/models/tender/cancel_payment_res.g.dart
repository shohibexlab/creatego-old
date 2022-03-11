// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_payment_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderCancelPaymentRes _$TenderCancelPaymentResFromJson(Map json) =>
    TenderCancelPaymentRes(
      receiptNo: json['receiptNo'] as String,
      amount: (json['amount'] as num).toDouble(),
      paymentMethodCode: json['paymentMethodCode'] as String,
      paymentSectionCode: json['paymentSectionCode'] as String,
      approvalDate: json['approvalDate'] as String,
      acquirerName: json['acquirerName'] as String?,
      cardName: json['cardName'] as String?,
    );

Map<String, dynamic> _$TenderCancelPaymentResToJson(
        TenderCancelPaymentRes instance) =>
    <String, dynamic>{
      'receiptNo': instance.receiptNo,
      'approvalDate': instance.approvalDate,
      'amount': instance.amount,
      'cardName': instance.cardName,
      'acquirerName': instance.acquirerName,
      'paymentSectionCode': instance.paymentSectionCode,
      'paymentMethodCode': instance.paymentMethodCode,
    };
