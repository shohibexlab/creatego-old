import 'package:json_annotation/json_annotation.dart';

part 'list_shifts_res.g.dart';

@JsonSerializable(anyMap: true)
class StoreListShiftsRes {
  String shiftId;
  String openTime;
  String? closeTime;
  double amount;
  @override
  StoreListShiftsRes({
    required this.shiftId,
    required this.openTime,
    this.closeTime,
    required this.amount,
  });

  factory StoreListShiftsRes.fromJson(Map<String, dynamic> json) =>
      _$StoreListShiftsResFromJson(json);

  Map<String, dynamic> toJson() => _$StoreListShiftsResToJson(this);
}
