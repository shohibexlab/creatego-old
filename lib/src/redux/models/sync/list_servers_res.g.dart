// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_servers_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncListServersRes _$SyncListServersResFromJson(Map json) => SyncListServersRes(
      index: json['index'] as int,
      labels:
          (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
      urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SyncListServersResToJson(SyncListServersRes instance) =>
    <String, dynamic>{
      'labels': instance.labels,
      'urls': instance.urls,
      'index': instance.index,
    };
