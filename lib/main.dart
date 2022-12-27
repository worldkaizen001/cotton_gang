import 'package:cotton_gang/src/pages/onboarding/onboarding_page.dart';
import 'package:cotton_gang/src/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/routes.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Cotton Gang',
      theme: ThemeData(

      ),
      // home:  BottomNavigation(),
      routerConfig: router,
    );
  }
}

