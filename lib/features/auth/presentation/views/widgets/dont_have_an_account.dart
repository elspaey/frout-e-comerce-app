import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';

class dontHaveAnAccount extends StatelessWidget {
  const dontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "لاتمتلك حساب؟ ",
          style: Styles.textStyleSemibold16,
        ),
        Text(
          "قم بإنشاء حساب",
          style: Styles.textStyleSemibold16
              .copyWith(color: AppColor.primaryColor),
        )
      ],
    );
  }
}
