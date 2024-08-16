import 'package:flutter/material.dart';
import 'package:user_interface_tz/intro_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: "SfPro",
            primaryColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.white)),
        home: const IntroPage());
  }
}
