import 'package:json_annotation/json_annotation.dart';
part 'cancel_payment_req.g.dart';

@JsonSerializable(anyMap: true)
class TenderCancelPaymentReq {
  String? salesId;
  String? receiptNo;
  double amount;

  @override
  TenderCancelPaymentReq({this.salesId, required this.amount, this.receiptNo});

  factory TenderCancelPaymentReq.fromJson(Map json) =>
      _$TenderCancelPaymentReqFromJson(json);

  Map toJson() => _$TenderCancelPaymentReqToJson(this);
}
