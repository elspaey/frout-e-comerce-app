import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/core/helper_functions/auto_generate_routs.dart';
import 'package:frout_ecomerce_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const fruitApp());
}

class fruitApp extends StatelessWidget {
  const fruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: ongenerateRout,
      initialRoute: Splashview.routeName,
    );
  }
}
