part of 'application.dart';

enum AppFlavor { development, staging, production }

CupertinoApp _buildCupertinoApp(AppFlavor flavor, GoRouter router) {
  log('Building CupertinoApp for flavor: ${flavor.name}', name: 'MainApp');
  switch (flavor) {
    case AppFlavor.development:
      return developmentIOS(router);
    case AppFlavor.staging:
      return stagingIOS(router);
    case AppFlavor.production:
      return productionIOS(router);
    default:
      return developmentIOS(router);
  }
}

MaterialApp _buildMaterialApp(AppFlavor flavor, GoRouter router) {
  log('Building CupertinoApp for flavor: ${flavor.name}', name: 'MainApp');
  switch (flavor) {
    case AppFlavor.development:
      return development(router);
    case AppFlavor.staging:
      return staging(router);
    case AppFlavor.production:
      return production(router);
    default:
      return development(router);
  }
}

CupertinoApp developmentIOS(GoRouter router) => CupertinoApp.router(
      title: AppFlavor.development.toString(),
      // Localization
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,

      // Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // Theme
      theme: CupertinoAppTheme.cupertinoTheme,

      // Other
      debugShowCheckedModeBanner: false,
    );

CupertinoApp stagingIOS(GoRouter router) => CupertinoApp.router(
      title: AppFlavor.development.toString(),
      // Localization
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,

      // Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // Theme
      theme: CupertinoAppTheme.cupertinoTheme,

      // Other
      debugShowCheckedModeBanner: false,
    );

CupertinoApp productionIOS(GoRouter router) => CupertinoApp.router(
      title: AppFlavor.development.toString(),
      // Localization
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,

      // Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // Theme
      theme: CupertinoAppTheme.cupertinoTheme,

      // Other
      debugShowCheckedModeBanner: false,
    );

MaterialApp development(GoRouter router) => MaterialApp.router(
      title: AppFlavor.development.toString(),
      // Localization
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,

      // Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // Theme
      theme: MaterialAppTheme.materialTheme,
      darkTheme: MaterialAppTheme.materialDark,
      themeMode: ThemeMode.dark,

      // Other
      debugShowCheckedModeBanner: true,
    );

MaterialApp staging(GoRouter router) => MaterialApp.router(
      title: AppFlavor.staging.toString(),
      // Localization
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,

      // Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // Theme
      theme: MaterialAppTheme.materialTheme,
      darkTheme: MaterialAppTheme.materialDark,
      themeMode: ThemeMode.dark,

      // Other
      debugShowCheckedModeBanner: false,
    );

MaterialApp production(GoRouter router) => MaterialApp.router(
      title: AppFlavor.production.toString(),
      // Localization
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,

      // Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // Theme
      theme: MaterialAppTheme.materialTheme,
      darkTheme: MaterialAppTheme.materialDark,
      themeMode: ThemeMode.dark,

      // Other
      debugShowCheckedModeBanner: false,
    );
