import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../core/localization/l10n.dart';
import '../core/localization/s.dart';
import '../core/router/router_provider.dart';
import '../core/theme/theme.dart';
import 'imports.dart';

part 'flavors.dart';

class MainApp extends ConsumerWidget {
  const MainApp({
    required this.flavor,
    required this.usesMaterialDesign,
    super.key,
  });

  final AppFlavor flavor;
  final bool usesMaterialDesign;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    // MaterialApp with ScreenUtilInit for responsive UI

    if (Platform.isIOS) {
      return ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(390, 844),
        builder: (context, child) => SafeArea(
          top: false,
          bottom: false,
          child: _buildCupertinoApp(flavor, router),
        ),
      );
    }
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(390, 844),
      builder: (context, child) => SafeArea(
        bottom: false,
        child: _buildCupertinoApp(flavor, router),
      ),
    );
  }
}
