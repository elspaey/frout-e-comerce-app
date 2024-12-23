import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';
import 'package:frout_ecomerce_app/core/utils/assets_imeges_class.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChecked});
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
          decoration: ShapeDecoration(
              color: isChecked ? AppColor.primaryColor : AppColor.whiteColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color:
                        isChecked ? Colors.transparent : AppColor.thairdColor,
                    width: 1.50,
                  ))),
          height: 24,
          width: 24,
          duration: Duration(milliseconds: 100),
          child: isChecked
              ? Padding(
                  padding: const EdgeInsets.all(4),
                  child: SvgPicture.asset(Assets.imagesCheckedIcon),
                )
              : SizedBox()),
    );
  }
}
