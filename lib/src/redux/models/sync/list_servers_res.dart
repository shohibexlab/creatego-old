import 'package:json_annotation/json_annotation.dart';

part 'list_servers_res.g.dart';

@JsonSerializable(anyMap: true)
class SyncListServersRes {
  List<String> labels;
  List<String> urls;
  int index;

  @override
  SyncListServersRes({
    required this.index,
    required this.labels,
    required this.urls,
  });

  factory SyncListServersRes.fromJson(Map json) =>
      _$SyncListServersResFromJson(json);

  Map toJson() => _$SyncListServersResToJson(this);
}
