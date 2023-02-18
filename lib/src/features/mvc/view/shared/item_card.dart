import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grassport/src/core/theme/theme.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    required this.title,
    required this.action,
    super.key,
  });

  final String title;
  final Widget action;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            paleGreen,
            paleGreen,
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: CupertinoColors.white,
                fontSize: 20,
              ),
            ),
            widget.action,
          ],
        ),
      ),
    );
  }
}
