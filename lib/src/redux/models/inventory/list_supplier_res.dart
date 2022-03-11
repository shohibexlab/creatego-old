import 'package:json_annotation/json_annotation.dart';

part 'list_supplier_res.g.dart';

@JsonSerializable(anyMap: true)
class InventoryListSupplierRes {
  String supplierId;
  String name;

  @override
  InventoryListSupplierRes({required this.supplierId, required this.name});

  factory InventoryListSupplierRes.fromJson(Map json) =>
      _$InventoryListSupplierResFromJson(json);

  Map toJson() => _$InventoryListSupplierResToJson(this);
}
