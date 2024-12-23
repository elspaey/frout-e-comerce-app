import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/login_page/login_page.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/sign_up_page/signUp_page.dart';
import 'package:frout_ecomerce_app/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:frout_ecomerce_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> ongenerateRout(RouteSettings setting) {
  switch (setting.name) {
    case Splashview.routeName:
      return MaterialPageRoute(builder: (context) => Splashview());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    case SignUpPage.routName:
      return MaterialPageRoute(builder: (context) => SignUpPage());
    case LoginPage.routeName:
      return MaterialPageRoute(builder: (context) => LoginPage());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
