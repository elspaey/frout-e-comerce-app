import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/custom_function/custom_appBar.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/01%20main_view_widgets/signup_page_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static const routName = "signUp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,
          text: "حساب جديد", style: AppStyle.textStyleBold19),
      body: SignupPageBody(),
    );
  }
}
