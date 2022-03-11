import 'package:json_annotation/json_annotation.dart';
import 'package:yollet_system/src/redux/models/tender/sales_account.dart';
import 'package:yollet_system/src/redux/models/tender/sales_item.dart';
part 'get_sale_details_res.g.dart';

@JsonSerializable(anyMap: true)
class TenderGetSaleDetailsRes {
  String salesId;
  String receiptNo;
  String storeName;
  String storeAddress;
  String? inn;
  double totalAmount;
  double supplyValue;
  double tax;
  String salesDate;
  bool isCanceled;
  String? cancelType;
  List<SalesAccount> salesAccounts;
  List<SalesItem> salesItems;

  @override
  TenderGetSaleDetailsRes(
      {required this.salesId,
      required this.receiptNo,
      required this.totalAmount,
      required this.salesDate,
      required this.isCanceled,
      required this.salesAccounts,
      required this.salesItems,
      required this.storeName,
      required this.storeAddress,
      required this.tax,
      required this.supplyValue,
      this.cancelType,
      this.inn});

  factory TenderGetSaleDetailsRes.fromJson(Map json) =>
      _$TenderGetSaleDetailsResFromJson(json);

  Map toJson() => _$TenderGetSaleDetailsResToJson(this);
}
