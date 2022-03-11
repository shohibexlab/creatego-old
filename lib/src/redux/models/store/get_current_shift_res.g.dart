// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_current_shift_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreGetCurrentShiftRes _$StoreGetCurrentShiftResFromJson(Map json) =>
    StoreGetCurrentShiftRes(
      shiftEndTime: json['shiftEndTime'] as String?,
      shiftId: json['shiftId'] as String,
      shiftStartTime: json['shiftStartTime'] as String,
    );

Map<String, dynamic> _$StoreGetCurrentShiftResToJson(
        StoreGetCurrentShiftRes instance) =>
    <String, dynamic>{
      'shiftId': instance.shiftId,
      'shiftStartTime': instance.shiftStartTime,
      'shiftEndTime': instance.shiftEndTime,
    };
