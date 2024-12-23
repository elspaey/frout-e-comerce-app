import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/constants.dart';
import 'package:frout_ecomerce_app/core/custom_widgets/custom_buttom.dart';
import 'package:frout_ecomerce_app/core/custom_widgets/text_form_field.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/01%20main_view_widgets/dont_have_an_account.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/login_page/login_page.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/sign_up_page/sign_up_widgets/terms_and_condations_widget.dart';

class SignupPageBody extends StatelessWidget {
  const SignupPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
                thePadding: EdgeInsets.only(bottom: 16),
                theHintText: "الاسم كامل",
                textType: TextInputType.name),
            CustomTextFormField(
                thePadding: EdgeInsets.only(bottom: 16),
                theHintText: "البريد الإلكتروني",
                textType: TextInputType.emailAddress),
            CustomTextFormField(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: AppColor.fourthColor,
                ),
                thePadding: EdgeInsets.only(bottom: 16),
                theHintText: "كلمة المرور",
                textType: TextInputType.visiblePassword),
            TermsAndCondationsWidget(),
            SizedBox(height: 30),
            CustomButtom(
              thPadding: EdgeInsets.zero,
              onPressed: () {},
              text: "إنشاء حساب جديد",
              thStyle:
                  AppStyle.textStyleBold16.copyWith(color: AppColor.whiteColor),
            ),
            SizedBox(height: 26),
            HaveOrNotHaveAnAccount(
              onTap: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                },
              theText: "تمتلك حساب بالفعل؟ ",
              theTextPress: "تسجيل الدخول",
            )
          ],
        ),
      ),
    );
  }
}
