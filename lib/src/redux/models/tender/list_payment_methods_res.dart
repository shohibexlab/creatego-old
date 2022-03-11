import 'package:json_annotation/json_annotation.dart';

part 'list_payment_methods_res.g.dart';

@JsonSerializable(anyMap: true)
class TenderListPaymentMethodsRes {
  String paymentMethodCode;
  String paymentMethodName;
  String paymentSectionCode;
  String paymentSectionName;
  Map properties;

  @override
  TenderListPaymentMethodsRes(
      {required this.paymentMethodCode,
      required this.paymentMethodName,
      required this.paymentSectionCode,
      required this.paymentSectionName,
      required this.properties});

  factory TenderListPaymentMethodsRes.fromJson(Map json) =>
      _$TenderListPaymentMethodsResFromJson(json);

  Map toJson() => _$TenderListPaymentMethodsResToJson(this);
}
