// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_payment_methods_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenderListPaymentMethodsRes _$TenderListPaymentMethodsResFromJson(Map json) =>
    TenderListPaymentMethodsRes(
      paymentMethodCode: json['paymentMethodCode'] as String,
      paymentMethodName: json['paymentMethodName'] as String,
      paymentSectionCode: json['paymentSectionCode'] as String,
      paymentSectionName: json['paymentSectionName'] as String,
      properties: json['properties'] as Map,
    );

Map<String, dynamic> _$TenderListPaymentMethodsResToJson(
        TenderListPaymentMethodsRes instance) =>
    <String, dynamic>{
      'paymentMethodCode': instance.paymentMethodCode,
      'paymentMethodName': instance.paymentMethodName,
      'paymentSectionCode': instance.paymentSectionCode,
      'paymentSectionName': instance.paymentSectionName,
      'properties': instance.properties,
    };
