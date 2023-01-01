part of 'package:cotton_gang/src/pages/register/register_page.dart';

class PhoneAndEmailScreen extends StatefulWidget {
  final TextEditingController fname, lname, pword, cpword;

  const PhoneAndEmailScreen(
      {
        required this.lname,
      required this.fname,
      required this.pword,
      required this.cpword,
      Key? key})
      : super(key: key);

  @override
  State<PhoneAndEmailScreen> createState() => _PhoneAndEmailScreenState();
}

class _PhoneAndEmailScreenState extends State<PhoneAndEmailScreen> {
  final formGlobalKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
        child: Form(
          key: formGlobalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBackAndTitle(
                width: 40,
                height: 40,
                arrowBackCallback: () {},
                title: 'Sign-Up',
              ),
              TextFieldAndTitle(
                controller: phoneController,
                title: 'Phone number',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter password';
                  }
                  if (val.length < 6) {
                    return 'Password is too short';
                  }

                  return null;
                },
                onChanged: (_) {
                  setState(() {});
                  return null;
                },
              ),
              CustomSizedBox.verticalSpace(5),
              TextFieldAndTitle(
                controller: emailController,
                title: 'Email address',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter password';
                  }
                  if (val.length < 6) {
                    return 'Password is too short';
                  }

                  return null;
                },
                onChanged: (_) {
                  setState(() {});
                  return null;
                },
              ),
              CustomSizedBox.verticalSpace(40),
              CGangButton(
                title: 'Continue',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor:
                    emailController.text.isEmpty || phoneController.text.isEmpty
                        ? const Color(0xff181818).withOpacity(0.49)
                        : const Color(0xff181818),
                callBack: () {
                  if (formGlobalKey.currentState!.validate()) {
                    signUpWithEmailAndPassword(
                        emailController.text.trim(),
                        widget.pword.text.trim(),
                        context,
                        widget.fname.text,
                        widget.lname.text,
                        phoneController.text.trim());
                  }
                },
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xffF9F9F9)),
                borderRadius: 4,
                borderColor: const Color(0xff181818).withOpacity(0.02),
              ),
              // RegistrationComponent(
              //   onChangeTwo: (_){
              //     setState(() {
              //
              //     });
              //     return null;
              //   },
              //
              //   onChangeOne: (_){
              //     setState(() {
              //
              //     });
              //     return null;
              //   },
              //   arrowBackCallback: () {},
              //
              //   buttonColor:
              //       phoneController.text.isEmpty || emailController.text.isEmpty
              //           ? const Color(0xff181818).withOpacity(0.49)
              //           : Colors.teal,
              //   buttonCallback: () {
              //     if (formGlobalKey.currentState!.validate()) {
              //
              //     }
              //   },
              //   controllerOne: phoneController,
              //   controllerTwo: emailController,
              //   title: 'Sign-Up',
              //   subtitleOne: 'Phone number',
              //   subtitleTwo: 'Email address',
              //   validatorOne: (val) {
              //     if (val!.isEmpty) {
              //       return 'Please enter password';
              //     } else if (val.length < 6) {
              //       return 'Password is too short';
              //     }
              //
              //     return null;
              //   },
              //   validatorTwo: (val) {
              //     if (val!.isEmpty) {
              //       return 'Please enter password';
              //     }
              //     if (val.length < 6) {
              //       return 'Password is too short';
              //     }
              //
              //     return null;
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }

  void signUpWithEmailAndPassword(
      String email, String password, context, fnameCont, lnameCont, pNumber) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      postDetailsToFirestore(context, fnameCont, lnameCont, pNumber);
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
        duration: const Duration(seconds: 3),
      ));
    });
  }

  void postDetailsToFirestore(
      BuildContext context,
      TextEditingController fnameCont,
      TextEditingController lnameCont,
      TextEditingController pNumber) {
    User? user = FirebaseAuth.instance.currentUser;

    UserModel userModel = UserModel();

    userModel.email = user?.email;
    userModel.uid = user?.uid;
    userModel.firstName = fnameCont.text;
    userModel.lastName = lnameCont.text;
    userModel.phoneNumber = pNumber.text;

    FirebaseFirestore.instance
        .collection('users')
        .doc(user?.uid)
        .set(userModel.toMap());
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Account created Successfully'),
      duration: Duration(seconds: 3),
    ));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const BottomNavigation();
    }));
  }
}
