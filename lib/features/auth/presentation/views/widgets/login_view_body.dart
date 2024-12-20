import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/custom_function/custom_appbar.dart';
import 'package:frout_ecomerce_app/core/custom_widgets/text_form_field.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';

class loginViewBody extends StatelessWidget {
  const loginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: thAppBar(
        context,
        text: "تسجيل الدخول",
        style: Styles.textStyleBold19,
        theIcon: Icon(Icons.arrow_back_ios_new),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            theHintText: "البريدالإلكترونى",
            textType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: AppColor.fourdColor,
            ),
            theHintText: "كلمة المرور",
            textType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
