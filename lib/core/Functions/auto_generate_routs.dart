import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/login_view/login_view.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/sign_up_page/signUp_page.dart';
import 'package:frout_ecomerce_app/features/mainView/presentation/mainView.dart';
import 'package:frout_ecomerce_app/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:frout_ecomerce_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> ongenerateRout(RouteSettings setting) {
  switch (setting.name) {
    case Splashview.routeName:
      return MaterialPageRoute(builder: (context) => Splashview());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    case SignUpView.routName:
      return MaterialPageRoute(builder: (context) => SignUpView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
    case Mainview.routName:
      return MaterialPageRoute(builder: (context) => Mainview());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
