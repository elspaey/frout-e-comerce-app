import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/features/onBoarding/presentation/views/widgets/on_boardingview_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = "onBoardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnBoardingViewBody()));
  }
}
