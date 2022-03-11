import 'package:json_annotation/json_annotation.dart';

part 'get_current_shift_res.g.dart';

@JsonSerializable(anyMap: true)
class StoreGetCurrentShiftRes {
  String shiftId;
  String shiftStartTime;
  String? shiftEndTime;

  @override
  StoreGetCurrentShiftRes(
      {this.shiftEndTime, required this.shiftId, required this.shiftStartTime});

  factory StoreGetCurrentShiftRes.fromJson(Map<String, dynamic> json) =>
      _$StoreGetCurrentShiftResFromJson(json);

  Map<String, dynamic> toJson() => _$StoreGetCurrentShiftResToJson(this);
}
