// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cotton_gang/src/pages/login/login_page.dart';

import 'package:cotton_gang/src/pages/register/register_page.dart';

void main() {
  TextEditingController controller = TextEditingController();
  group('Verify the functionality each major widgets ', () {
    testWidgets('arrow back', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
              body: ArrowBackAndTitle(
        title: 'sign',
        arrowBackCallback: () {},
        width: 30,
        height: 40,
      ))));

      var imageAndTitleComponent = find.text('sign');
      expect(imageAndTitleComponent, findsOneWidget);

    });
    testWidgets('textFieldAndTitle', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
              body: TextFieldAndTitle(
                  title: 'Enter password', controller: controller))));

      var imageAndTitleComponent = find.text('Enter password');
      expect(imageAndTitleComponent, findsOneWidget);

    });
    // testWidgets('buttons Section', (WidgetTester tester) async {
    //   // Build our app and trigger a frame.
    //   await tester.pumpWidget(MaterialApp(
    //       home: Scaffold(
    //           body: SocialMediaLoginButtons(
    //     alternativeCallback: () {},
    //     alternativeTitle: 'alternative login',
    //     googleButtonCallback: () {},
    //     facebookButtonCallback: () {},
    //   ))));
    //
    //   // Verify that our widget has all required components for this screen.
    //   var alternativeLogin = find.text('alternative login');
    //
    //   expect(alternativeLogin, findsOneWidget);
    // });
  });

  group('login screen functionality', () {
    testWidgets('login screen test', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(home: LoginScreen()));

      // Verify that our widget has all required components for this screen.
      var imageAndTitleComponent = find.byType(ArrowBackAndTitle);
      var textFieldAndTitle = find.byType(TextFieldAndTitle);
      var alignWidget = find.byKey(const ValueKey('check'));
      var phoneField = find.byKey(const ValueKey('phoneController'));
      var emailField = find.byKey(const ValueKey('emailController'));
      var passwordField = find.byKey(const ValueKey('passwordController'));
      var continueButton = find.byKey(const ValueKey('continueButton'));
      var forgetPassword = find.text('Did you forget the password?');

      expect(imageAndTitleComponent, findsOneWidget);
      expect(continueButton, findsOneWidget);
      expect(phoneField, findsOneWidget);
      expect(emailField, findsOneWidget);
      expect(passwordField, findsOneWidget);
      expect(alignWidget, findsOneWidget);
      expect(forgetPassword, findsOneWidget);
      expect(textFieldAndTitle, findsNWidgets(3));

      var noEmail = find.text('aigbekelvin@gmail.com');
      var noPhoneNumber = find.text('07067582810');
      var noPassword = find.text('1234567');

      expect(noEmail, findsNothing);
      expect(noPhoneNumber, findsNothing);
      expect(noPassword, findsNothing);

      await tester.tap(continueButton);
      await tester.pump();
      expect(find.text('Please enter number'), findsOneWidget);
      expect(find.text('Please enter a valid Email'), findsOneWidget);
      expect(find.text('Please enter password'), findsOneWidget);

      await tester.enterText(phoneField, '07067582810');
      await tester.enterText(passwordField, '1234567');
      await tester.enterText(emailField, 'aigbekelvin@gmail.com');
      await tester.tap(continueButton);
      await tester.pump();

      expect(find.text('07067582810'), findsOneWidget);
      expect(find.text('1234567'), findsOneWidget);
      expect(find.text('aigbekelvin@gmail.com'), findsOneWidget);

    });
  });
}
