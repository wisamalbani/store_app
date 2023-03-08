import 'package:flutter/material.dart';
import 'package:store_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electrical Store',
      theme: ThemeData(textTheme: GoogleFonts.almaraiTextTheme()),
      home: HomeScreen(),
    );
  }
}
