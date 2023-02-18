import 'package:flutter/cupertino.dart';
import 'package:grassport/src/features/mvc/view/shared/item_card.dart';

import '../../../../app/imports.dart';
import '../../../../core/localization/s.dart';
import '../../../../core/theme/theme.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: green,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ItemCard(
              title: '${S.of(context).use} ${S.of(context).salt}',
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
              title: '${S.of(context).use} ${S.of(context).key}',
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
              title: '${S.of(context).use} ${S.of(context).salt}',
              action: CupertinoSwitch(
                value: true,
                activeColor: lightGreen,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
