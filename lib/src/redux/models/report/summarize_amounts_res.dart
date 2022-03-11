import 'package:json_annotation/json_annotation.dart';
part 'summarize_amounts_res.g.dart';

@JsonSerializable(anyMap: true)
class SummarizeAmountsRes {
  int salesCount;
  double salesAmount;
  int refundCount;
  double refundAmount;

  @override
  SummarizeAmountsRes(
      {required this.salesCount,
      required this.salesAmount,
      required this.refundCount,
      required this.refundAmount});

  factory SummarizeAmountsRes.fromJson(Map<String, dynamic> json) =>
      _$SummarizeAmountsResFromJson(json);

  Map<String, dynamic> toJson() => _$SummarizeAmountsResToJson(this);
}
