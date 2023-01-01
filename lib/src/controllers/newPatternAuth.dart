

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cotton_gang/src/models/user_model.dart';
import 'package:cotton_gang/src/pages/homepage/homepage_page.dart';
import 'package:cotton_gang/src/pages/login/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../widgets/bottom_navigation.dart';


class AuthService {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  handleAuthState(){
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if(snapshot.hasData){
          return const HomepageScreen();
        }
        else {
          return const LoginScreen();
        }
      },

    );
  }


  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      scopes: <String>["email"]
    ).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }


  signOut()async{
    return await FirebaseAuth.instance.signOut();
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  void signInWithEmailAndPassword (String email, String password, BuildContext context) async {
    
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Logged in Successfully'),duration: Duration(seconds: 3),));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return  const BottomNavigation();
      }));
    }).catchError((e){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid Password or the user does not exist.'),duration: Duration(seconds: 5),));

    });


  }





}