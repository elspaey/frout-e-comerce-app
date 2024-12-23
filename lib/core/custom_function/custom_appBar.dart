import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';

AppBar buildAppBar(BuildContext context,
    {required String text, required TextStyle style, Widget? theIcon}) {
  return AppBar(
    leadingWidth: 55,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: theIcon ??
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.thairdColor),
                shape: BoxShape.circle,
                color: AppColor.whiteColor,
              ),
              // height: 20,
              // width: 20,
              child:
                  theIcon ?? Icon(size: 22, Icons.arrow_back_ios_new_rounded),
            ),
      ),
    ),
    centerTitle: true,
    title: Text(
      text,
      style: style,
    ),
  );
}
