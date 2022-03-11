// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_shifts_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreListShiftsRes _$StoreListShiftsResFromJson(Map json) => StoreListShiftsRes(
      shiftId: json['shiftId'] as String,
      openTime: json['openTime'] as String,
      closeTime: json['closeTime'] as String?,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$StoreListShiftsResToJson(StoreListShiftsRes instance) =>
    <String, dynamic>{
      'shiftId': instance.shiftId,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'amount': instance.amount,
    };
