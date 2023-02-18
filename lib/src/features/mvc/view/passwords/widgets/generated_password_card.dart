import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/theme.dart';

class GeneratedPasswordCard extends StatefulWidget {
  const GeneratedPasswordCard({super.key});

  @override
  State<GeneratedPasswordCard> createState() => _GeneratedPasswordCardState();
}

class _GeneratedPasswordCardState extends State<GeneratedPasswordCard> {
  final String generatedPassword = 'generatedPassword';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Clipboard.setData(
          ClipboardData(text: generatedPassword),
        ).then(
          (value) => log('Copied to clipboard: $generatedPassword'),
        );
      },
      child: Container(
          height: 100.h,
          width: double.maxFinite,
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
          child: Center(
            child: Text(
              '$generatedPassword (tap copy)',
              style: const TextStyle(
                color: CupertinoColors.white,
                fontSize: 20,
              ),
            ),
          )),
    );
  }
}
