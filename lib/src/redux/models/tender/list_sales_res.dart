import 'package:json_annotation/json_annotation.dart';
part 'list_sales_res.g.dart';

@JsonSerializable(anyMap: true)
class TenderListSales {
  String salesId;
  String receiptNo;
  double totalAmount;
  String salesDate;
  bool isCanceled;

  @override
  TenderListSales({
    required this.salesId,
    required this.receiptNo,
    required this.totalAmount,
    required this.salesDate,
    required this.isCanceled,
  });

  factory TenderListSales.fromJson(Map json) => _$TenderListSalesFromJson(json);

  Map toJson() => _$TenderListSalesToJson(this);
}
