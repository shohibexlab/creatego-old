// import 'package:redux/redux.dart';
// import 'package:creatego/src/navigation/middleware/yollet_navigation_middleware.dart';
// import 'package:creatego/src/navigation/yollet_nav_reducer.dart';
//
// final appStoreYolletNav = Store<AppStateYollet>(
//   appReducerYollet,
//   initialState: AppStateYollet.initial(),
//   middleware: [
//     NavigationMiddlewareYollet(),
//   ],
// );
//
// @immutable
// class AppStateYollet {
//   final NavigationStateYollet navigationState;
//
//   AppStateYollet({
//     required this.navigationState,
//   });
//
//   factory AppStateYollet.initial() {
//     return AppStateYollet(
//       navigationState: NavigationStateYollet.initial(),
//     );
//   }
//
//   AppStateYollet copyWith({NavigationStateYollet? navigationState}) {
//     return AppStateYollet(
//       navigationState: navigationState ?? this.navigationState,
//     );
//   }
// }
