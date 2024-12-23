import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/sign_up_page/sign_up_widgets/custom_check_box.dart';

class TermsAndCondationsWidget extends StatefulWidget {
  const TermsAndCondationsWidget({super.key});

  @override
  State<TermsAndCondationsWidget> createState() =>
      _TermsAndCondationsWidgetState();
}

class _TermsAndCondationsWidgetState extends State<TermsAndCondationsWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Checkbox(value: false, onChanged: (value) {}),
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: "من خلال إنشاء حساب فإنك توافق على ",
                style: AppStyle.textStyleSemibold13
                    .copyWith(color: AppColor.secondryLinesColor)),
            TextSpan(
                text: "الشروط والأحكام الخاصة بنا",
                style: AppStyle.textStyleSemibold16
                    .copyWith(color: AppColor.primaryLightLinesColor))
          ])),
        )
      ],
    );
  }
}
