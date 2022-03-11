import 'package:json_annotation/json_annotation.dart';
part 'list_sales_by_shift_req.g.dart';

@JsonSerializable(anyMap: true)
class TenderListSalesByShiftReq {
  String? shiftId;
  @override
  TenderListSalesByShiftReq({
    this.shiftId,
  });

  factory TenderListSalesByShiftReq.fromJson(Map json) =>
      _$TenderListSalesByShiftReqFromJson(json);

  Map toJson() => _$TenderListSalesByShiftReqToJson(this);
}
