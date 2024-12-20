import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/features/splash/presentation/views/splash_widgets/splash_view_body.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});
  static const routeName = "splash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
