import 'package:json_annotation/json_annotation.dart';

part 'get_status_res.g.dart';

@JsonSerializable(anyMap: true)
class SyncGetStatusRes {
  String syncLastTime;
  bool networkStatus;
  bool syncStatus;

  @override
  SyncGetStatusRes({
    required this.networkStatus,
    required this.syncStatus,
    required this.syncLastTime,
  });

  factory SyncGetStatusRes.fromJson(Map json) =>
      _$SyncGetStatusResFromJson(json);

  Map toJson() => _$SyncGetStatusResToJson(this);
}
