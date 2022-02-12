import 'package:yollet_system/src/navigation/yollet_nav_action.dart';

class AppRouterObserverYollet extends RouteObserver<Route<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    appStoreYolletNav.dispatch(UpdateNavigationYolletAction(
        name: route.settings.name, isPage: route is PageRoute, method: 'push'));
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    appStoreYolletNav.dispatch(UpdateNavigationYolletAction(
        name: (previousRoute?.settings.name) ?? "",
        isPage: previousRoute is PageRoute,
        method: 'pop'));
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    appStoreYolletNav.dispatch(UpdateNavigationYolletAction(
        name: newRoute!.settings.name,
        isPage: newRoute is PageRoute,
        method: 'replace'));
  }
}
