// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cash_in_out_history_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreCashInOutHistoryRes _$StoreCashInOutHistoryResFromJson(Map json) =>
    StoreCashInOutHistoryRes(
      inOutId: json['inOutId'] as String,
      inOutType: json['inOutType'] as String,
      amount: (json['amount'] as num).toDouble(),
      memo: json['memo'] as String?,
      inOutTime: json['inOutTime'] as String?,
    );

Map<String, dynamic> _$StoreCashInOutHistoryResToJson(
        StoreCashInOutHistoryRes instance) =>
    <String, dynamic>{
      'inOutId': instance.inOutId,
      'inOutType': instance.inOutType,
      'amount': instance.amount,
      'memo': instance.memo,
      'inOutTime': instance.inOutTime,
    };
