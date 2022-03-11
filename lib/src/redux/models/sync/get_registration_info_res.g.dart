// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_registration_info_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncGetRegistrationInfoRes _$SyncGetRegistrationInfoResFromJson(Map json) =>
    SyncGetRegistrationInfoRes(
        serviceTerms: json['serviceTerms'] as String,
        marketingInfoAgreement: json['marketingInfoAgreement'] as String,
        personalInfoAgreement: json['personalInfoAgreement'] as String,
        softwareTerms: json['softwareTerms'] as String,
        storeTerminals: (json['storeTerminals'] as List<dynamic>));

Map<String, dynamic> _$SyncGetRegistrationInfoResToJson(
        SyncGetRegistrationInfoRes instance) =>
    <String, dynamic>{
      'storeTerminals': instance.storeTerminals,
      'softwareTerms': instance.softwareTerms,
      'serviceTerms': instance.serviceTerms,
      'personalInfoAgreement': instance.personalInfoAgreement,
      'marketingInfoAgreement': instance.marketingInfoAgreement,
    };
