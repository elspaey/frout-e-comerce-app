import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frout_ecomerce_app/core/helper_functions/auto_generate_routs.dart';
import 'package:frout_ecomerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const fruitApp());
}

class fruitApp extends StatelessWidget {
  const fruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      theme: ThemeData().copyWith(
          textTheme: GoogleFonts.cairoTextTheme(ThemeData.light().textTheme)),

      debugShowCheckedModeBanner: false,
      onGenerateRoute: ongenerateRout,
      initialRoute: Splashview.routeName,
    );
  }
}
// main higth 812
