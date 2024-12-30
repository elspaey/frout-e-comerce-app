import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frout_ecomerce_app/core/constants.dart';
import 'package:frout_ecomerce_app/core/helper_classes/get_it.dart';
import 'package:frout_ecomerce_app/core/services/shared_prefrence_singleton.dart';
import 'package:frout_ecomerce_app/core/simple_bloc_observer.dart';
import 'package:frout_ecomerce_app/core/utils/app_color.dart';
import 'package:frout_ecomerce_app/firebase_options.dart';

import 'core/Functions/auto_generate_routs.dart';
import 'features/auth/presentation/views/login_view/login_view.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await prefs.init();
  setupGetIt();
  Bloc.observer = SimpleBlocObserver();
  runApp(const fruitApp());
}

class fruitApp extends StatelessWidget {
  const fruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: Locale("ar"),
        // theme: ThemeData.dark().copyWith(
        //     textTheme: GoogleFonts.cairoTextTheme(ThemeData.dark().textTheme)),
        // theme: ThemeData().copyWith(
        // textTheme: GoogleFonts.cairoTextTheme(ThemeData.light().textTheme)),
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
            fontFamily: kCairoFont),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: ongenerateRout,
        // initialRoute: Splashview.routeName,
        initialRoute: LoginView.routeName,
        // home: Testview(),
      ),
    );
  }
}
// main higth 812
// main width 376
