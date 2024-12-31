import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frout_ecomerce_app/core/constants.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/manger/cubits/signUp_cubit/sign_up_cubit.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/01%20main_view_widgets/dont_have_an_account.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/sign_up_page/sign_up_widgets/terms_and_condations_widget.dart';

import '../../../../../core/Functions/biuld_scafold_massenger.dart';
import '../../../../../core/Widgets/custom_buttom.dart';
import '../../../../../core/Widgets/password_field.dart';
import '../../../../../core/Widgets/text_form_field.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, userName, password;
  late bool isTermesAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                  onSaved: (UserNameValue) {
                    userName = UserNameValue!;
                  },
                  thePadding: EdgeInsets.only(bottom: 16),
                  theHintText: "الاسم كامل",
                  textType: TextInputType.name),
              CustomTextFormField(
                  onSaved: (emailValue) {
                    email = emailValue!;
                  },
                  thePadding: EdgeInsets.only(bottom: 16),
                  theHintText: "البريد الإلكتروني",
                  textType: TextInputType.emailAddress),
              PasswordField(
                onSaved: (valuePassword) {
                  password = valuePassword!;
                },
              ),
              TermsAndCondationsWidget(
                onChanged: (value) {
                  isTermesAccepted = value;
                },
              ),
              SizedBox(height: 30),
              CustomButtom(
                thPadding: EdgeInsets.zero,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isTermesAccepted) {
                      context.read<SignUpCubit>().createUserEmailAndPassword(
                          email, password, userName);
                    } else {
                      buildScafoldMessanger(
                          context, "يجب عليك الموافقه على الشروط والاحكام");
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: "إنشاء حساب جديد",
                thStyle: AppStyle.textStyleBold16
                    .copyWith(color: AppColor.whiteColor),
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
      ),
    );
  }
}
