import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../models/order/item_res.dart';
import '../models/order/list_item_res.dart';
import '../models/order/list_orders_res.dart';
import '../models/store/get_cash_in_out_history_res.dart';
import '../models/store/get_current_shift_res.dart';

///------------------Basket Action ---------
const String GetOrderSaveOrderAction = 'GetOrderSaveOrderAction';
const String GetCalculateTotalDueAction = 'GetCalculateTotalDueAction';
const String GetAddToCartAction = "GetAddToCartAction";
const String GetIncrementItemQtyFromCartAction =
    "GetIncrementItemQtyFromCartAction";
const String GetDecrementItemQtyFromCartAction =
    "GetDecrementItemQtyFromCartAction";
const String GetDeleteItemFromCartAction = "GetDeleteItemFromCartAction";
const String GetClearCartAction = "GetClearCartAction";
const String GetReservedOrderListAction = "GetReservedOrderListAction";
const String GetLoadReservedItemAction = "GetLoadReservedItemAction";
const String GetAddDiscountToCartItemAction = "GetAddDiscountToCartItemAction";

class UpdateBasketAction {
  OrderItemRes? selectedItem;
  List<OrderItemRes>? cartList;
  OrderListOrdersRes? reservedItems;
  OrderListItemRes? selectedReservedItem;
  double? totalDue;
  double? totalReceived;
  double? taxExemptReceived;
  double? balance;
  double? totalTax;
  double? totalDiscount;
  double? selectedItemDiscount;
  String? innBinNumber;

  UpdateBasketAction(
      {this.cartList,
      this.selectedItem,
      this.reservedItems,
      this.selectedReservedItem,
      this.balance,
      this.totalDiscount,
      this.totalTax,
      this.taxExemptReceived,
      this.totalDue,
      this.selectedItemDiscount,
      this.innBinNumber,
      this.totalReceived});
}
