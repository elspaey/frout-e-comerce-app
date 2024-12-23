import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frout_ecomerce_app/core/constants.dart';
import 'package:frout_ecomerce_app/core/custom_function/custom_appBar.dart';
import 'package:frout_ecomerce_app/core/custom_widgets/custom_buttom.dart';
import 'package:frout_ecomerce_app/core/custom_widgets/text_form_field.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';
import 'package:frout_ecomerce_app/core/utils/assets_imeges_class.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/01%20main_view_widgets/dont_have_an_account.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/01%20main_view_widgets/or_divider.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/01%20main_view_widgets/social_Login_button.dart';

import '../sign_up_page/signUp_page.dart';

class loginViewBody extends StatelessWidget {
  const loginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        text: "تسجيل الدخول",
        style: AppStyle.textStyleBold19,
        theIcon: Icon(Icons.arrow_back_ios_new),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                thePadding: EdgeInsets.zero,
                theHintText: "البريدالإلكترونى",
                textType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                thePadding: EdgeInsets.zero,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: AppColor.fourthColor,
                ),
                theHintText: "كلمة المرور",
                textType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "نسيت كلمة المرور؟",
                style: AppStyle.textStyleSemibold13
                    .copyWith(color: AppColor.primaryLightLinesColor),
              ),
              SizedBox(
                height: 33,
              ),
              CustomButtom(
                thPadding: EdgeInsets.zero,
                onPressed: () {},
                text: "تسجيل الدخول",
                thStyle: AppStyle.textStyleBold16
                    .copyWith(color: AppColor.whiteColor),
              ),
              SizedBox(
                height: 33,
              ),
              HaveOrNotHaveAnAccount(
                onTap: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, SignUpPage.routName);
                  },
                theText: "لاتمتلك حساب؟ ",
                theTextPress: "قم بإنشاءحساب",
              ),
              SizedBox(
                height: 33,
              ),
              OrDivider(),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {},
                theText: Text(
                  "تسجيل الدخول بواسطة جوجل",
                  style: AppStyle.textStyleSemibold16
                      .copyWith(color: AppColor.blackColor),
                ),
                theIcon: SvgPicture.asset(Assets.imagesGoogleIcons),
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {},
                theText: Text(
                  "تسجيل الدخول بواسطة أبل",
                  style: AppStyle.textStyleSemibold16
                      .copyWith(color: AppColor.blackColor),
                ),
                theIcon: SvgPicture.asset(Assets.imagesAppleIcons),
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {},
                theText: Text(
                  "تسجيل الدخول بواسطة فيسبوك",
                  style: AppStyle.textStyleSemibold16
                      .copyWith(color: AppColor.blackColor),
                ),
                theIcon: SvgPicture.asset(Assets.imagesFacebookIcons),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
