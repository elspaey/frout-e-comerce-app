import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/sign_up_page/signUp_page.dart';

class HaveOrNotHaveAnAccount extends StatelessWidget {
  const HaveOrNotHaveAnAccount({
    super.key,
    required this.theText,
    this.theStyle,
    required this.theTextPress,
    this.onTap,
  });
  final String theText, theTextPress;
  final TextStyle? theStyle;
  final GestureRecognizer? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          theText,
          style: theStyle ??
              AppStyle.textStyleSemibold16
                  .copyWith(color: AppColor.secondryLinesColor),
        ),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SignUpView.routName);
            },
            child: Text.rich(TextSpan(
              recognizer: onTap,
              text: theTextPress,
              style: theStyle ??
                  AppStyle.textStyleSemibold16
                      .copyWith(color: AppColor.primaryColor),
            ))

            // Text(
            //   "قم بإنشاء حساب",
            //   style: Styles.textStyleSemibold16
            //       .copyWith(color: AppColor.primaryColor),
            // ),
            )
      ],
    );
  }
}
