import 'package:json_annotation/json_annotation.dart';
part 'list_sales_by_shift_res.g.dart';

@JsonSerializable(anyMap: true)
class TenderListSalesByShiftRes {
  String salesId;
  String receiptNo;
  double totalAmount;
  String salesDate;
  bool isCanceled;

  @override
  TenderListSalesByShiftRes(
      {required this.totalAmount,
      required this.salesDate,
      required this.isCanceled,
      required this.salesId,
      required this.receiptNo});

  factory TenderListSalesByShiftRes.fromJson(Map json) =>
      _$TenderListSalesByShiftResFromJson(json);

  Map toJson() => _$TenderListSalesByShiftResToJson(this);
}
