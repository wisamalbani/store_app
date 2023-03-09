import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('مرحبا بكم بمتجر الالكترونيات'),
        centerTitle: false,
      ),
    );
  }
}
