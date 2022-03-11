import 'package:redux/redux.dart';
import 'package:yollet_system/src/redux/tools/app_state.dart';
import 'package:yollet_system/yollet_navigation.dart';
import '../models/order/item_res.dart';
import '../models/order/list_item_res.dart';
import '../tools/action.dart';

class BasketMiddleware extends MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, next) {
    switch (action) {
      case GetAddToCartAction:
        return _getAddToCartAction(store.state, next);
      case GetIncrementItemQtyFromCartAction:
        return _getIncrementItemQtyFromCartAction(store.state, next);
      case GetDecrementItemQtyFromCartAction:
        return _getDecrementItemQtyFromCartAction(store.state, next);
      case GetDeleteItemFromCartAction:
        return _getDeleteItemFromCartAction(store.state, next);
      case GetClearCartAction:
        return _getClearCartAction(store.state, next);
      case GetReservedOrderListAction:
        return _getReservedOrderListAction(store.state, next);
      case GetLoadReservedItemAction:
        return _getLoadReservedItemAction(store.state, next);
      case GetCalculateTotalDueAction:
        return _getCalculateTotalDueAction(store.state, next);
      case GetAddDiscountToCartItemAction:
        return _getAddDiscountToCartItemAction(store.state, next);
      case GetOrderSaveOrderAction:
        return _getOrderSaveOrderAction(store.state, next);
      default:
        return next(action);
    }
  }
}

//GetAddToCartAction
_getAddToCartAction(AppState state, NextDispatcher next) async {
  OrderItemRes newItem1 = state.basketState.selectedItem;
  newItem1.qty = 1;
  newItem1.discount = 0;
  List<OrderItemRes> cartItems1 = state.basketState.cartList;
  cartItems1.add(newItem1);
  next(UpdateBasketAction(cartList: cartItems1));
}

//GetIncrementItemQtyFromCartAction
_getIncrementItemQtyFromCartAction(AppState state, NextDispatcher next) async {
  OrderItemRes selectedItem1 = state.basketState.selectedItem;
  selectedItem1.discount = 0;
  selectedItem1.qty += 1;
  next(UpdateBasketAction(totalDiscount: 0.0));
}

//GetDecrementItemQtyFromCartAction
_getDecrementItemQtyFromCartAction(AppState state, NextDispatcher next) async {
  OrderItemRes selectedItem1 = state.basketState.selectedItem;
  selectedItem1.discount = 0;
  if (selectedItem1.qty > 1) {
    selectedItem1.qty -= 1;
    next(UpdateBasketAction(totalDiscount: 0.0));
  } else {
    _getDeleteItemFromCartAction(state, next);
  }
}

//GetDeleteItemFromCartAction
_getDeleteItemFromCartAction(AppState state, NextDispatcher next) async {
  final cartItems1 = state.basketState.cartList;
  final selectedItem1 = cartItems1.firstWhere(
      (element) => element.itemId == state.basketState.selectedItem.itemId);
  cartItems1.remove(selectedItem1);
  next(UpdateBasketAction(cartList: cartItems1, totalDiscount: 0.0));
}

//GetClearCartAction
_getClearCartAction(AppState state, NextDispatcher next) async {
  next(UpdateBasketAction(
      cartList: [],
      selectedReservedItem: OrderListItemRes(
          totalAmount: 0.0,
          totalQty: 0,
          tableId: "",
          orderId: "",
          lastRevisionDatetime: ""),
      selectedItem:
          OrderItemRes(name: '', id: '', itemId: '', qty: 0, price: 0)));
}

//GetReservedOrderListAction
_getReservedOrderListAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    // next(UpdateBasketAction(
    //     reservedItems: OrderListOrdersRes(
    //         list: ApiResult.value
    //             .map<OrderListItemRes>((e) => OrderListItemRes.fromJson(e))
    //             .toList())));
    // // next(GetClearCartAction);
    // showModalBottomSheet(
    //     context: Get.context!,
    //     builder: (context) {
    //       return const ReserveBottomSheetWidget();
    //     });
  }

  _onFail() {}
  final _params = {
    "tableId": null
  }; //state.basketState.selectedReservedItem.tableId
  // await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeListOrders,
  //     params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetLoadReservedItemAction
_getLoadReservedItemAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    // List<OrderItemRes> items = [];
    // ApiResult.value['items'].map<OrderItemRes>((e) {
    //   if (!e['isStorno']) {
    //     items.add(OrderItemRes.fromJson(e));
    //   }
    //   return OrderItemRes.fromJson(e);
    // }).toList();
    // next(UpdateBasketAction(
    //     cartList: items,
    //     totalDue: ApiResult.value['totalDue'],
    //     taxExemptReceived: ApiResult.value['taxExemptReceived'],
    //     totalReceived: ApiResult.value['totalReceived'],
    //     balance: ApiResult.value['balance'],
    //     totalDiscount: ApiResult.value['discount'].toDouble()));
    // appStore.dispatch(DismissPopupAction());
  }

  _onFail() {}
  // final _params = {"orderId": state.basketState.selectedReservedItem.orderId};
  // await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeGetOrder,
  //     params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetCalculateTotalDueAction
_getCalculateTotalDueAction(AppState state, NextDispatcher next) async {
  _onSuccess() {
    // next(UpdateBasketAction(
    //     totalDue: ApiResult.value['totalDue'],
    //     // totalDiscount: ApiResult.value['totalDiscount'],
    //     totalTax: ApiResult.value['totalTax']));
    // appStore.dispatch(DismissPopupAction());
  }

  _onFail() {}
  // final _params = {
  //   "items": state.basketState.cartList
  //       .map<Map>(
  //           (e) => {"itemId": e.itemId, "qty": e.qty, "discount": e.discount})
  //       .toList()
  // };
  // await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeCalculateTotal,
  //     params: _params, onSuccess: _onSuccess, onFail: _onFail));
}

//GetAddDiscountToCartItemAction
_getAddDiscountToCartItemAction(AppState state, NextDispatcher next) async {
  double discount = state.basketState.selectedItemDiscount;
  OrderItemRes selectedItem = state.basketState.selectedItem;
  selectedItem.discount = discount;
  next(UpdateBasketAction(totalDiscount: 0.0));
}

//GetOrderSaveOrderAction
_getOrderSaveOrderAction(AppState state, next) async {
  final _params = {
    "orderId": state.basketState.selectedReservedItem.orderId,
    "discount": state.basketState.totalDiscount,
    "items": state.basketState.cartList
        .map<Map>((e) => {
              "id": e.id,
              "itemId": e.itemId,
              "qty": e.qty,
              "discount": e.discount
            })
        .toList()
  };

  _onSuccess() {
    // next(UpdateBasketAction(
    //     selectedReservedItem: OrderListItemRes(
    //         orderId: ApiResult.value['orderId'],
    //         lastRevisionDatetime:
    //             state.basketState.selectedReservedItem.lastRevisionDatetime,
    //         tableId: ApiResult.value['tableId'],
    //         totalQty: state.basketState.selectedReservedItem.totalQty,
    //         totalAmount: ApiResult.value['totalDue'])));
  }

  _onFail() {}
  // await appStore.dispatch(GetRunApiFetchAction(ApiInvokes.invokeSaveOrder,
  //     params: _params, onSuccess: _onSuccess, onFail: _onFail));
}
