import 'package:cotton_gang/src/pages/login/login_page.dart';
import 'package:cotton_gang/src/pages/onboarding/onboarding_page.dart';
import 'package:cotton_gang/src/pages/register/register_page.dart';
import 'package:cotton_gang/src/pages/select_language/select_language_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cotton Geng',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SelectLanguage(),
    );
  }
}

