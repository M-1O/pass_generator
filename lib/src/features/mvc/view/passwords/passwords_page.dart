import 'package:flutter/cupertino.dart';
import 'package:grassport/src/core/theme/theme.dart';

import '../../../../app/imports.dart';
import '../../../../core/localization/s.dart';
import '../shared/item_card.dart';
import 'widgets/generated_password_card.dart';

class PasswordsPage extends ConsumerWidget {
  const PasswordsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: green,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const GeneratedPasswordCard(),
              SizedBox(
                height: 30.h,
              ),
              ItemCard(
                title: S.of(context).password,
                action: CupertinoSwitch(
                  value: true,
                  activeColor: lightGreen,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ItemCard(
                title: S.of(context).password,
                action: CupertinoSwitch(
                  value: true,
                  activeColor: lightGreen,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ItemCard(
                title: S.of(context).password,
                action: CupertinoSwitch(
                  value: true,
                  activeColor: lightGreen,
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
