import 'package:json_annotation/json_annotation.dart';
part 'approve_payment_res.g.dart';

@JsonSerializable(anyMap: true)
class TenderApprovePaymentRes {
  String receiptNo;
  String? approvalNo;
  String approvalDate;
  double amount;
  double? received;
  double? change;
  double balance;
  String? cardNo;
  String? cardName;
  String? issuerName;
  String? acquirerName;
  String? company;
  String? companyNo;
  String? vanResMsg;
  String paymentSectionCode;
  String paymentMethodCode;

  @override
  TenderApprovePaymentRes({
    required this.receiptNo,
    required this.amount,
    required this.paymentMethodCode,
    required this.paymentSectionCode,
    required this.balance,
    required this.approvalDate,
    this.received,
    this.acquirerName,
    this.approvalNo,
    this.cardName,
    this.cardNo,
    this.change,
    this.company,
    this.companyNo,
    this.issuerName,
    this.vanResMsg,
  });

  factory TenderApprovePaymentRes.fromJson(Map json) =>
      _$TenderApprovePaymentResFromJson(json);

  Map toJson() => _$TenderApprovePaymentResToJson(this);
}
