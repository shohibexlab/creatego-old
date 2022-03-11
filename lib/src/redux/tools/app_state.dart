import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get/get.dart';
import 'package:redux/redux.dart';
import 'package:yollet_system/src/redux/middlewares/basket_middleware.dart';
import 'package:yollet_system/src/redux/tools/reducer.dart';
import '../states/basket_state.dart';

AppStateSimple get GETSTATE =>
    StoreProvider.of<AppStateSimple>(Get.context!).state;

final appStoreSimple = Store<AppStateSimple>(
  appReducerSimple,
  initialState: AppStateSimple.initial(),
  middleware: [
    BasketMiddleware(),
  ],
);

@immutable
class AppStateSimple {
  final BasketState basketState;

  AppStateSimple({
    required this.basketState,
  });

  factory AppStateSimple.initial() {
    return AppStateSimple(
      basketState: BasketState.initial(),
    );
  }

  AppStateSimple copyWith({
    BasketState? basketState,
  }) {
    return AppStateSimple(
      basketState: basketState ?? this.basketState,
    );
  }
}
