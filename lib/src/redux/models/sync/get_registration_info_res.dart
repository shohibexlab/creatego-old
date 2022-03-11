import 'package:json_annotation/json_annotation.dart';

part 'get_registration_info_res.g.dart';

@JsonSerializable(anyMap: true)
class SyncGetRegistrationInfoRes {
  List storeTerminals;
  String softwareTerms;
  String serviceTerms;
  String personalInfoAgreement;
  String marketingInfoAgreement;

  @override
  SyncGetRegistrationInfoRes({
    required this.serviceTerms,
    required this.marketingInfoAgreement,
    required this.personalInfoAgreement,
    required this.softwareTerms,
    required this.storeTerminals,
  });

  factory SyncGetRegistrationInfoRes.fromJson(Map json) =>
      _$SyncGetRegistrationInfoResFromJson(json);

  Map toJson() => _$SyncGetRegistrationInfoResToJson(this);
}
