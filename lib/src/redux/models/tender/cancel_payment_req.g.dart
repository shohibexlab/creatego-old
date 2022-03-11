// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_payment_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderCancelPaymentReq _$TenderCancelPaymentReqFromJson(Map json) =>
    TenderCancelPaymentReq(
      salesId: json['salesId'] as String?,
      amount: (json['amount'] as num).toDouble(),
      receiptNo: json['receiptNo'] as String?,
    );

Map<String, dynamic> _$TenderCancelPaymentReqToJson(
        TenderCancelPaymentReq instance) =>
    <String, dynamic>{
      'salesId': instance.salesId,
      'receiptNo': instance.receiptNo,
      'amount': instance.amount,
    };
