import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.theIcon,
    required this.theText,
    required this.onPressed,
  });
  final SvgPicture theIcon;
  final Text theText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: AppColor.thairdColor))),
          onPressed: () {},
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColor.whiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                theIcon,
                Spacer(
                  flex: 1,
                ),
                theText,
                Spacer(
                  flex: 1,
                )
              ],
            ),
          )),
    );
  }
}
