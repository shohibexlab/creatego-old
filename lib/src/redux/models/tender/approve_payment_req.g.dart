// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approve_payment_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderApprovePaymentReq _$TenderApprovePaymentReqFromJson(Map json) =>
    TenderApprovePaymentReq(
      paymentMethodCode: json['paymentMethodCode'] as String,
      amount: (json['amount'] as num).toDouble(),
      orderId: json['orderId'] as String?,
      taxExempt: (json['taxExempt'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      qrCode: json['qrCode'] as String?,
      receiptNo: json['receiptNo'] as String?,
      received: (json['received'] as num?)?.toDouble(),
      inn: json['inn'] as String?,
    );

Map<String, dynamic> _$TenderApprovePaymentReqToJson(
        TenderApprovePaymentReq instance) =>
    <String, dynamic>{
      'paymentMethodCode': instance.paymentMethodCode,
      'amount': instance.amount,
      'taxExempt': instance.taxExempt,
      'received': instance.received,
      'currency': instance.currency,
      'orderId': instance.orderId,
      'receiptNo': instance.receiptNo,
      'qrCode': instance.qrCode,
      'inn': instance.inn,
    };
