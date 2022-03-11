import 'package:json_annotation/json_annotation.dart';

part 'verify_license_res.g.dart';

@JsonSerializable(anyMap: true)
class SyncVerifyLicenseRes {
  String appVersion;
  String appPackage;
  String currAppVersion;
  String state;
  bool updatable;
  bool success;

  @override
  SyncVerifyLicenseRes({
    required this.state,
    required this.appPackage,
    required this.success,
    required this.appVersion,
    required this.currAppVersion,
    required this.updatable,
  });

  factory SyncVerifyLicenseRes.fromJson(Map json) =>
      _$SyncVerifyLicenseResFromJson(json);

  Map toJson() => _$SyncVerifyLicenseResToJson(this);
}
