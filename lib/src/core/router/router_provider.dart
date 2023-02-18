import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/app_page.dart';
import '../../features/mvc/view/passwords/passwords_page.dart';
import '../../features/mvc/view/settings/settings_page.dart';
import '../widgets/onboarding/onboarding.dart';
import 'router_pages.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RoutePaths.main,
    redirect: ref.watch(routerServiceProvider).redirectLogic,
    debugLogDiagnostics: true,
    errorBuilder: (context, state) {
      return RouteErrorPage(
        errorMessage: state.error.toString(),
        key: state.pageKey,
      );
    },
    routes: _routes,
  );
});

final routerServiceProvider = Provider<RouterProvider>((ref) {
  return RouterProvider(ref);
});

class RouterProvider extends StateNotifier {
  RouterProvider(this._ref) : super(_ref);
  final Ref _ref;

  bool _loginState = false;

  bool get isLoggedIn => _loginState;

  set isLoggedIn(val) {
    _loginState = val;
  }

  Future<void> onAppStart() async {}

  FutureOr<String?> redirectLogic(
      BuildContext context, GoRouterState state) async {
    return RoutePaths.main;
  }
}
