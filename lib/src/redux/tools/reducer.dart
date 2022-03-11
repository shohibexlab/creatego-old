import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../states/basket_state.dart';
import 'action.dart';
import 'app_state.dart';

AppStateSimple appReducerSimple(AppStateSimple state, dynamic action) {
  var newState = state.copyWith(
    basketState: _basketReducer(state.basketState, action),
  );

  return newState;
}

///
/// Bakset Reducer
///

final _basketReducer = combineReducers<BasketState>([
  TypedReducer<BasketState, UpdateBasketAction>(_updateBaskedState),
]);

BasketState _updateBaskedState(BasketState state, UpdateBasketAction action) {
  double totalCartPrice = 0;

  if (state.cartList.isNotEmpty) {
    for (int i = 0; i < state.cartList.length; i++) {
      double price = state.cartList[i].price!;
      double qty = state.cartList[i].qty;
      double discount = state.cartList[i].discount ?? 0;
      double totalDiscount = action.totalDiscount ?? state.totalDiscount;
      totalCartPrice += (price * qty) - discount - totalDiscount;
    }
  }

  return state.copyWith(
    selectedItem: action.selectedItem ?? state.selectedItem,
    cartList: action.cartList ?? state.cartList,
    innBinNumber: action.innBinNumber ?? state.innBinNumber,
    reservedItems: action.reservedItems ?? state.reservedItems,
    selectedReservedItem:
        action.selectedReservedItem ?? state.selectedReservedItem,
    totalReceived: action.totalReceived ?? state.totalReceived,
    totalDue: action.totalDue ?? totalCartPrice,
    balance: action.balance ?? state.balance,
    taxExemptReceived: action.taxExemptReceived ?? state.taxExemptReceived,
    totalTax: action.totalTax ?? state.totalTax,
    totalDiscount: action.totalDiscount ?? state.totalDiscount,
    selectedItemDiscount:
        action.selectedItemDiscount ?? state.selectedItemDiscount,
  );
}
