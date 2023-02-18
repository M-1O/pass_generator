part of 'router_provider.dart';

List<RouteBase> _routes = [
  GoRoute(
    name: RouteNames.onboarding,
    path: RoutePaths.onboarding,
    builder: (context, state) => const Onboarding(),
  ),
  GoRoute(
    name: RouteNames.main,
    path: RoutePaths.main,
    builder: (context, state) => const AppPage(),
  ),
  ShellRoute(
    navigatorKey: _shellNavigatorKey,
    pageBuilder: (context, state, child) =>
        buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: CupertinoPageScaffold(child: child)),
    routes: [
      GoRoute(
        name: RouteNames.passwords,
        path: RoutePaths.passwords,
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context, state: state, child: const PasswordsPage()),
      ),
      GoRoute(
        name: RouteNames.settings,
        path: RoutePaths.settings,
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context, state: state, child: const SettingsPage()),
      ),
    ],
  ),
];
