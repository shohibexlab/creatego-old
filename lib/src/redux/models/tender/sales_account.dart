import 'package:json_annotation/json_annotation.dart';

part 'sales_account.g.dart';

@JsonSerializable()
class SalesAccount {
  String salesAccountId;
  int salesAccountSno;
  String paymentMethodCode;
  String paymentSectionCode;
  String receiptNo;
  double approvalAmount;
  String approvalDate;
  bool isCanceled;

  @override
  SalesAccount({
    required this.salesAccountId,
    required this.paymentMethodCode,
    required this.paymentSectionCode,
    required this.receiptNo,
    required this.approvalAmount,
    required this.approvalDate,
    required this.isCanceled,
    required this.salesAccountSno,
  });

  factory SalesAccount.fromJson(Map<String, dynamic> json) =>
      _$SalesAccountFromJson(json);

  Map<String, dynamic> toJson() => _$SalesAccountToJson(this);
}
