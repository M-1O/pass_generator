import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grassport/src/features/mvc/view/shared/popover.dart';

import '../../../../../core/localization/s.dart';
import '../../../../../core/theme/theme.dart';
import 'add_card_bottom_sheet.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.r),
            ),
          ),
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return const Popover(
              child: CreateCardBottomSheet(),
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: lightGreen,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.add,
                color: Colors.white,
                size: 20.sp,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                S.of(context).addNew,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
