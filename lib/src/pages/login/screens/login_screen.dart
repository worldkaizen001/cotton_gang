part of 'package:cotton_gang/src/pages/login/login_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formGlobalKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  String? mtoken;

  void getToken() async {
    await FirebaseMessaging.instance.getToken().then((token) {
      setState(() {
        mtoken = token!;
        print("my token is $mtoken");
      });
    });
  }

  void onBackground() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('onMessage');
      final snackBar =
          SnackBar(content: Text(message.notification?.title ?? ""));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  void grantPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  bool obscure = false;
  bool isLoading = false;

  @override
  void initState() {
    grantPermission();
    getToken();
    onBackground();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
          child: Form(
            key: formGlobalKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ArrowBackAndTitle(
                width: 40,
                height: 40,
                arrowBackCallback: () {
                  getToken();
                },
                title: 'Sign-In',
              ),
              TextFieldAndTitle(
                controller: phoneController,
                title: 'Phone Number',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter number';
                  }
                  if (val.length < 6) {
                    return 'Password is too short';
                  }

                  return null;
                },
                obscure: false,
                onChanged: (val) {
                  setState(() {});
                  return null;
                },
              ),
              CustomSizedBox.verticalSpace(5),
              TextFieldAndTitle(
                controller: emailController,
                title: 'Email Address',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter a valid Email';
                  }
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(val)) {
                    return 'Please enter a valid Email';
                  }
                  return null;
                },
                obscure: false,
                onChanged: (val) {
                  setState(() {});
                  return null;
                },
              ),
              CustomSizedBox.verticalSpace(5),
              TextFieldAndTitle(
                controller: passwordController,
                suffixIconColor: const Color(0xff8B8B8B),
                suffixIcon:
                    obscure ? Icons.visibility_outlined : Icons.visibility_off,
                suffixIconFunction: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
                title: 'Password',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter password';
                  } else if (val.length < 6) {
                    return 'Password is too short';
                  }

                  return null;
                },
                obscure: obscure,
                onChanged: (val) {
                  setState(() {});
                  return null;
                },
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Did you forget the password?',
                    style: GoogleFonts.prompt(
                      textStyle: const TextStyle(
                        color: Color(0xff1D8909),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              CustomSizedBox.verticalSpace(40),
              ThreeButtons(
                alternativeCallback: () {},
                alternativeTitle: 'SIGN-UP INSTEAD',
                facebookButtonCallback: () {
                  // AuthService().signInWithFacebook().then((value) {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context){
                  //     return HomepageScreen();
                  //   }));
                  // });
                },
                firstButtonCallback: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return BottomNavigation();
                  }));
                  print('yammy');
                  // if (formGlobalKey.currentState!.validate()) {
                  //   AuthService().signInWithEmailAndPassword(emailController.text.trim(),passwordController.text.trim(), context);
                  // }
                },
                googleButtonCallback: () {
                  // AuthService().signInWithGoogle().then((value) {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context){
                  //     return HomepageScreen();
                  //   }));
                  //
                  // });
                },
                firstButtonTitle: 'Continue',
                firstButtonColor: passwordController.text.isEmpty ||
                        phoneController.text.isEmpty ||
                        emailController.text.isEmpty
                    ? const Color(0xff181818).withOpacity(0.49)
                    : const Color(0xff181818),
                firstButtonBorderColor:
                    const Color(0xff181818).withOpacity(0.21),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
