import 'package:json_annotation/json_annotation.dart';

part 'get_cash_in_out_history_res.g.dart';

@JsonSerializable(anyMap: true)
class StoreCashInOutHistoryRes {
  String inOutId;
  String inOutType;
  double amount;
  String? memo;
  String? inOutTime;

  @override
  StoreCashInOutHistoryRes(
      {required this.inOutId,
      required this.inOutType,
      required this.amount,
      this.memo,
      this.inOutTime});

  factory StoreCashInOutHistoryRes.fromJson(Map<String, dynamic> json) =>
      _$StoreCashInOutHistoryResFromJson(json);

  Map<String, dynamic> toJson() => _$StoreCashInOutHistoryResToJson(this);
}
