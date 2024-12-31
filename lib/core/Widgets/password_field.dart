import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/Widgets/text_form_field.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });
  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obSecureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        obscureText: obSecureText,
        onSaved: widget.onSaved,
        suffixIcon: GestureDetector(
            onTap: () {
              obSecureText = !obSecureText;
              setState(() {});
            },
            child: obSecureText
                ? Icon(
                    Icons.remove_red_eye,
                    color: AppColor.fourthColor,
                  )
                : Icon(
                    Icons.visibility_off,
                    color: AppColor.fourthColor,
                  )),
        thePadding: EdgeInsets.only(bottom: 16),
        theHintText: "كلمة المرور",
        textType: TextInputType.visiblePassword);
  }
}
