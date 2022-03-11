import 'package:flutter/foundation.dart';
import 'package:yollet_system/src/redux/models/order/item_res.dart';

import '../models/order/list_item_res.dart';
import '../models/order/list_orders_res.dart';

@immutable
class BasketState {
  final OrderItemRes selectedItem;
  final List<OrderItemRes> cartList;
  final OrderListOrdersRes reservedItems;
  final OrderListItemRes selectedReservedItem;
  final double totalDue; //Total amount to be paid
  //totdalDue = (itemPrice1 * qty1- itemDiscount1)
  // + (itemPrice2 * qty2 - itemDiscount2)
  // ... - orderDiscount (
  final double totalReceived; //Amount received
  final double taxExemptReceived; //Tax exempt amount received
  final double balance; //Remaining amount to be paid
  final double totalTax;
  final double totalDiscount;
  final double selectedItemDiscount;
  final String innBinNumber;

  BasketState({
    required this.selectedItem,
    required this.cartList,
    required this.reservedItems,
    required this.selectedReservedItem,
    required this.totalDue,
    required this.totalReceived,
    required this.taxExemptReceived,
    required this.balance,
    required this.totalTax,
    required this.totalDiscount,
    required this.selectedItemDiscount,
    required this.innBinNumber,
  });
  factory BasketState.initial() {
    return BasketState(
      totalDiscount: 0.0,
      totalTax: 0.0,
      balance: 0.0,
      totalReceived: 0.0,
      taxExemptReceived: 0.0,
      selectedItemDiscount: 0.0,
      innBinNumber: "",
      totalDue: 20000000000,
      cartList: [],
      selectedReservedItem: OrderListItemRes(
          orderId: '',
          tableId: '',
          totalQty: 0,
          totalAmount: 0.0,
          lastRevisionDatetime: ''),
      reservedItems: OrderListOrdersRes(list: []),
      selectedItem:
          OrderItemRes(name: '', id: '', itemId: '', qty: 0.0, price: 0.0),
    );
  }

  BasketState copyWith({
    OrderItemRes? selectedItem,
    List<OrderItemRes>? cartList,
    OrderListOrdersRes? reservedItems,
    OrderListItemRes? selectedReservedItem,
    double? totalDue,
    double? totalReceived,
    double? taxExemptReceived,
    double? balance,
    double? totalTax,
    double? totalDiscount,
    double? selectedItemDiscount,
    String? innBinNumber,
  }) {
    return BasketState(
      selectedItem: selectedItem ?? this.selectedItem,
      totalReceived: totalReceived ?? this.totalReceived,
      innBinNumber: innBinNumber ?? this.innBinNumber,
      totalDue: totalDue ?? this.totalDue,
      balance: balance ?? this.balance,
      taxExemptReceived: taxExemptReceived ?? this.taxExemptReceived,
      cartList: cartList ?? this.cartList,
      reservedItems: reservedItems ?? this.reservedItems,
      selectedReservedItem: selectedReservedItem ?? this.selectedReservedItem,
      totalTax: totalTax ?? this.totalTax,
      totalDiscount: totalDiscount ?? this.totalDiscount,
      selectedItemDiscount: selectedItemDiscount ?? this.selectedItemDiscount,
    );
  }
}
