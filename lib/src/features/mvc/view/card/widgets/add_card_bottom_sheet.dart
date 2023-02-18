import 'package:flutter/cupertino.dart';
import 'package:grassport/src/app/imports.dart';
import 'package:grassport/src/features/mvc/view/shared/input_field.dart';

import '../../../../../core/localization/s.dart';
import '../../../../../core/theme/theme.dart';

class CreateCardBottomSheet extends StatefulWidget {
  const CreateCardBottomSheet({super.key});

  @override
  State<CreateCardBottomSheet> createState() => _CreateCardBottomSheetState();
}

class _CreateCardBottomSheetState extends State<CreateCardBottomSheet> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _cardDateController = TextEditingController();
  final TextEditingController _cardCvvController = TextEditingController();

  @override
  void dispose() {
    _cardNumberController.dispose();
    _cardHolderController.dispose();
    _cardDateController.dispose();
    _cardCvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).addNewCard,
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _scanCardButton,
            ],
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              S.of(context).cardNumber,
              style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          _cardNumberField,
          SizedBox(height: 15.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              S.of(context).cardHolder,
              style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          _cardHolderField,
          SizedBox(height: 15.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              S.of(context).cardExpirationDate,
              style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _cardDateField,
              SizedBox(width: 10.w),
              _cardCvvField,
            ],
          ),
          SizedBox(height: 30.h),
          _saveCardButton,
        ],
      ),
    );
  }

  Widget get _cardNumberField {
    return InputField(
      placeholder: S.of(context).cardNumber,
      controller: _cardNumberController,
      labelText: S.of(context).cardNumber,
      keyboardType: TextInputType.number,
    );
  }

  Widget get _cardHolderField {
    return InputField(
      placeholder: S.of(context).cardHolder,
      controller: _cardHolderController,
      labelText: S.of(context).cardHolder,
      keyboardType: TextInputType.name,
    );
  }

  Widget get _cardDateField {
    return Expanded(
      child: InputField(
        placeholder: S.of(context).cardExpirationDate,
        controller: _cardDateController,
        labelText: S.of(context).cardExpirationDate,
        keyboardType: TextInputType.datetime,
      ),
    );
  }

  Widget get _cardCvvField {
    return Expanded(
      child: InputField(
        placeholder: S.of(context).cardCvv,
        controller: _cardCvvController,
        labelText: S.of(context).cardCvv,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget get _saveCardButton {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          yellow,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              S.of(context).save,
              style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _scanCardButton {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(paleGreen),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 3.h,
          ),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.camera,
            color: CupertinoColors.white,
          ),
          SizedBox(width: 10.w),
          Text(
            S.of(context).scanCard,
            style: TextStyle(
              color: CupertinoColors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
