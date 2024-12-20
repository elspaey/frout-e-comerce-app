import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frout_ecomerce_app/core/constants.dart';
import 'package:frout_ecomerce_app/core/services/shared_prefrence_singleton.dart';
import 'package:frout_ecomerce_app/core/utils/assets_imeges_class.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/login_page.dart';
import 'package:frout_ecomerce_app/features/onBoarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: double.infinity,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesCircles,
          fit: BoxFit.fill,
        ),
      ],
    );
  }     
  void excuteNavigation() {
    bool isOnBoardingViewSeen = prefs.getBool(KIsOnBoardingViewSeen);
    Future.delayed(Duration(seconds: 4), () {
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginPage.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
