import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/constants.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.onPressed,
    required this.text,
    this.radius,
    this.theHight,
    this.theWidth,
    this.thStyle,
    this.thPadding,
  });
  final VoidCallback onPressed;
  final String text;
  final double? radius;
  final double? theHight;
  final double? theWidth;
  final TextStyle? thStyle;
  final EdgeInsetsGeometry? thPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: thPadding ?? EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SizedBox(
        height: theHight ?? 54,
        width: theWidth ?? double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 16),
              ),
              backgroundColor: AppColor.primaryColor),
          onPressed: onPressed,
          child: Text(
            text,
            style: thStyle ?? TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
