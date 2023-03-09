import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: KPrimaryColor,
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: KPrimaryColor,
            onPrimary: KPrimaryColor,
            secondary: KPrimaryColor,
            onSecondary: KPrimaryColor,
            error: KPrimaryColor,
            onError: KPrimaryColor,
            background: KPrimaryColor,
            onBackground: KPrimaryColor,
            surface: KPrimaryColor,
            onSurface: KPrimaryColor),
      ),
      // Arabic RTL
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: HomeScreen(),
    );
  }
}
