import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/s.dart';
import '../../../../core/theme/theme.dart';

class InputField extends StatelessWidget {
  const InputField({
    required this.placeholder,
    required this.controller,
    required this.labelText,
    this.inputAction,
    this.keyboardType = TextInputType.text,
    super.key,
  });

  final String placeholder;
  final String labelText;
  final TextInputType keyboardType;
  final TextInputAction? inputAction;
  final TextEditingController controller;

  List<TextInputFormatter>? inputFormatter(context) {
    List<TextInputFormatter> inputFormatters = [];
    if (labelText == S.of(context).cardNumber) {
      inputFormatters.add(
        MaskedInputFormatter(
          '# (###) ###-##-##',
          allowedCharMatcher: RegExp(r'[0-9]'),
        ),
      );
    }
    return inputFormatters;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: CupertinoTextField(
        cursorColor: yellow,
        style: TextStyle(
          color: CupertinoColors.white,
          fontSize: 14.sp,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: paleGreen,
        ),
        placeholder: placeholder,
        placeholderStyle: TextStyle(
          color: CupertinoColors.lightBackgroundGray,
          fontSize: 14.sp,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 3.h,
        ),
        controller: controller,
        //
        autocorrect: false,
        autofocus: false,
        keyboardType: keyboardType,
        textInputAction: inputAction ?? TextInputAction.next,

        inputFormatters: inputFormatter(context),

        //
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
      ),
    );
  }
}
