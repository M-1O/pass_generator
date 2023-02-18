import 'package:flutter/cupertino.dart';
import 'package:grassport/src/features/mvc/view/card/widgets/add_card_button.dart';

import '../../../../app/imports.dart';
import '../../../../core/localization/s.dart';
import '../../../../core/theme/theme.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar.medium(
              backgroundColor: green,
              automaticallyImplyLeading: false,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              title: Text(
                S.of(context).yourCards,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.all(10.h),
                  child: const AddCardButton(),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
