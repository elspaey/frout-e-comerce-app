import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';
import 'package:frout_ecomerce_app/core/custom_widgets/custom_buttom.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/login_page.dart';
import 'package:frout_ecomerce_app/features/onBoarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: onBoardingPageView(
          pageController: pageController,
        )),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              activeColor: AppColor.primaryColor,
              color: currentPage == 1
                  ? AppColor.primaryColor
                  : AppColor.primaryColor.withValues(alpha: 0.5)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButtom(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginPage.routeName);
                },
                text: "ابدأ الأن"),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        )
      ],
    );
  }
}
