import 'package:json_annotation/json_annotation.dart';

part 'calculate_total_res.g.dart';

@JsonSerializable(anyMap: true)
class OrderCalculateTotalRes {
  double totalDue;
  double totalTax;
  double totalDiscount;

  @override
  OrderCalculateTotalRes({
    required this.totalDue,
    required this.totalTax,
    required this.totalDiscount,
  });

  factory OrderCalculateTotalRes.fromJson(Map json) =>
      _$OrderCalculateTotalResFromJson(json);

  Map toJson() => _$OrderCalculateTotalResToJson(this);
}
