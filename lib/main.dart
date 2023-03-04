import 'package:cotton_gang/src/pages/onboarding/onboarding_page.dart';
import 'package:cotton_gang/src/pages/post_item/post_item_page.dart';
import 'package:cotton_gang/src/widgets/bottom_navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'core/routes.dart';

Future<void> _firebaseMessagingBackgroundHandler(message)async {
    await Firebase.initializeApp();
    print('Handling a background message ${message.messageId}');

}


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const ProviderScope(child: MyApp()));
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

      ),
      home: OnBoardingScreen()

      // BottomNavigation(),
      // AuthService().handleAuthState(),
      // routerConfig: router,
    );
  }
}

