import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grassport/src/core/theme/theme.dart';
import 'package:grassport/src/features/mvc/controller/password/password_cubit.dart';

import '../features/mvc/view/card/cards_page.dart';
import '../features/mvc/view/passwords/passwords_page.dart';
import '../features/mvc/view/settings/settings_page.dart';
import 'imports.dart';

class AppPage extends ConsumerStatefulWidget {
  const AppPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppPageState();
}

class _AppPageState extends ConsumerState<AppPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), FlutterNativeSplash.remove);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PasswordCubit>(
          create: (context) => PasswordCubit(),
        ),
      ],
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: yellow,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.lock_shield,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.creditcard,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.settings,
              ),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) => const PasswordsPage(),
              );
            case 1:
              return CupertinoTabView(
                builder: (context) => const CardsPage(),
              );
            case 2:
              return CupertinoTabView(
                builder: (context) => const SettingsPage(),
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
