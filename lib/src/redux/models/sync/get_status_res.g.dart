// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_status_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncGetStatusRes _$SyncGetStatusResFromJson(Map json) => SyncGetStatusRes(
      networkStatus: json['networkStatus'] as bool,
      syncStatus: json['syncStatus'] as bool,
      syncLastTime: json['syncLastTime'] as String,
    );

Map<String, dynamic> _$SyncGetStatusResToJson(SyncGetStatusRes instance) =>
    <String, dynamic>{
      'syncLastTime': instance.syncLastTime,
      'networkStatus': instance.networkStatus,
      'syncStatus': instance.syncStatus,
    };
