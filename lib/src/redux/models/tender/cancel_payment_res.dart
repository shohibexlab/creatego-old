import 'package:json_annotation/json_annotation.dart';
part 'cancel_payment_res.g.dart';

@JsonSerializable(anyMap: true)
class TenderCancelPaymentRes {
  String receiptNo;
  String approvalDate;
  double amount;
  String? cardName;
  String? acquirerName;
  String paymentSectionCode;
  String paymentMethodCode;

  @override
  TenderCancelPaymentRes({
    required this.receiptNo,
    required this.amount,
    required this.paymentMethodCode,
    required this.paymentSectionCode,
    required this.approvalDate,
    this.acquirerName,
    this.cardName,
  });

  factory TenderCancelPaymentRes.fromJson(Map json) =>
      _$TenderCancelPaymentResFromJson(json);

  Map toJson() => _$TenderCancelPaymentResToJson(this);
}
