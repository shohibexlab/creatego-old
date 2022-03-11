// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_license_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncVerifyLicenseRes _$SyncVerifyLicenseResFromJson(Map json) =>
    SyncVerifyLicenseRes(
      state: json['state'] as String,
      appPackage: json['appPackage'] as String,
      success: json['success'] as bool,
      appVersion: json['appVersion'] as String,
      currAppVersion: json['currAppVersion'] as String,
      updatable: json['updatable'] as bool,
    );

Map<String, dynamic> _$SyncVerifyLicenseResToJson(
        SyncVerifyLicenseRes instance) =>
    <String, dynamic>{
      'appVersion': instance.appVersion,
      'appPackage': instance.appPackage,
      'currAppVersion': instance.currAppVersion,
      'state': instance.state,
      'updatable': instance.updatable,
      'success': instance.success,
    };
