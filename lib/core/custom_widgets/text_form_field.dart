import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/constants.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.theHintText,
      required this.textType,
      this.suffixIcon,
      this.thePadding});
  final String theHintText;
  final TextInputType textType;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? thePadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: thePadding ?? const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: TextFormField(
        keyboardType: textType,
        decoration: InputDecoration(
            hintText: theHintText,
            hintStyle: AppStyle.textStyleBold13,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: AppColor.secondryColor,
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder()),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppColor.thairdColor),
        borderRadius: BorderRadius.circular(4));
  }
}
