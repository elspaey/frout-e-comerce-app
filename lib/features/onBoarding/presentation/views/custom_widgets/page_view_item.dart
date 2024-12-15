import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backGroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisable});
  final String image, backGroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisable;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.65,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                backGroundImage,
                fit: BoxFit.fill,
              )),
              Positioned.fill(
                bottom: -150,
                right: 50,
                left: 50,
                top: -90,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisable,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("تخط"),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        title,
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subtitle,
            style: Styles.textStyleSemibold13,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
