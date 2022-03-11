import 'package:json_annotation/json_annotation.dart';
part 'approve_payment_req.g.dart';

@JsonSerializable(anyMap: true)
class TenderApprovePaymentReq {
  String paymentMethodCode;
  double amount;
  double? taxExempt;
  double? received;
  String? currency;
  String? orderId;
  String? receiptNo;
  String? qrCode;
  String? inn;

  @override
  TenderApprovePaymentReq(
      {required this.paymentMethodCode,
      required this.amount,
      this.orderId,
      this.taxExempt,
      this.currency,
      this.qrCode,
      this.receiptNo,
      this.received,
      this.inn});

  factory TenderApprovePaymentReq.fromJson(Map json) =>
      _$TenderApprovePaymentReqFromJson(json);

  Map toJson() => _$TenderApprovePaymentReqToJson(this);
}
