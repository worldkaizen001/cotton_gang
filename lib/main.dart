import 'package:cotton_gang/src/widgets/bottom_navigation.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Cotton Gang',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  BottomNavigation(),
    );
  }
}

