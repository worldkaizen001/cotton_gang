// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cotton_gang/src/pages/login/login_page.dart';
import 'package:cotton_gang/src/pages/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cotton_gang/main.dart';

TextEditingController controller = TextEditingController();

void main() {
  group('Testing to know if all widgets are on the screen', () {
    testWidgets('testing the login screen ', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(
        home: LoginScreen(),
      ));

      var arrowBackAndTitle = find.byType(ArrowBackAndTitle);
      var textFieldAndTitle = find.byType(TextFieldAndTitle);
      var alignText = find.text('Did you forget the password?');
      var phoneNumber = find.text('Phone Number');
      var email = find.text('Email Address');
      var password = find.text('Password');
      var signUpInstead = find.text('SIGN-UP INSTEAD');
      var conti = find.text('Continue');
      var threeButtons = find.byType(ThreeButtons);

      expect(conti, findsOneWidget);
      expect(phoneNumber, findsOneWidget);
      expect(signUpInstead, findsOneWidget);
      expect(email, findsOneWidget);
      expect(password, findsOneWidget);
      expect(arrowBackAndTitle, findsOneWidget);
      expect(textFieldAndTitle, findsNWidgets(3));
      expect(alignText, findsOneWidget);
      expect(threeButtons, findsOneWidget);
    });
  });
  group('Testing the behaviour of the textFields ', () {
    testWidgets('testing the login screen ', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
            body: TextFieldAndTitle(
              title: 'Title',
              controller: controller,
            )),
      ));
      var title = find.text('Title');
      await tester.enterText(find.byType(TextFieldAndTitle), 'kelvin');
      expect(find.text('kelvin'), findsOneWidget);

      expect(title, findsOneWidget);
    });
    testWidgets('testing the login screen ', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
            body: ArrowBackAndTitle(
                title: 'Sign-In',
                arrowBackCallback: () {},
                width: 40,
                height: 40)),
      ));
      expect(find.text('Sign-In'), findsOneWidget);
    });
    testWidgets('testing the login screen ', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: ThreeButtons(
                firstButtonBorderColor: Colors.black,
                firstButtonColor: Colors.black,
                alternativeCallback: () {},
                alternativeTitle: 'SIGN-UP INSTEAD',
                googleButtonCallback: () {},
                facebookButtonCallback: () {},
                firstButtonTitle: 'Continue',
                firstButtonCallback: () {}),
          )));
    });
  });
}
