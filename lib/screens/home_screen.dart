import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/widgets/home/home_body.dart';
// import 'package:path/C:/development/flutter-apps/store_app/lib/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: KPrimaryColor,
      elevation: 0,
      title: Text(
        'مرحبا بكم بمتجر الالكترونيات',
        style: GoogleFonts.getFont('Almarai'),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        )
      ],
    );
  }
}
