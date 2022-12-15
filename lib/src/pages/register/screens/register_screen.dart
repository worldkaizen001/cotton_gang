part of 'package:cotton_gang/src/pages/register/register_page.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formGlobalKey = GlobalKey<FormState>();

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
          child:Form(
            key: formGlobalKey,
              child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBackAndTitle(
                width: 40,
                height: 40,
                arrowBackCallback: () {},
                title: 'Sign-Up',
              ),
              TextFieldAndTitle(
                controller: firstnameController,
                title: 'First name',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter name';
                  }
                  if (!RegExp(r'^[a-z A-Z]+$').hasMatch(val)) {
                    return 'enter a real name';
                  }

                  return null;
                },
                obscure: false,
                onChanged: (_) {
                  setState(() {

                  });
                  return null;
                },
              ),
              CustomSizedBox.verticalSpace(15),
              TextFieldAndTitle(
                controller: lastnameController ,
                title: 'Last name',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter name';
                  }
                  if (!RegExp(r'^[a-z A-Z]+$').hasMatch(val)) {
                    return 'enter a real name';
                  }

                  return null;
                },
                obscure: false,
                onChanged: (_) {
                  setState(() {

                  });
                  return null;
                },
              ),
              CustomSizedBox.verticalSpace(40),
              ThreeButtons(
                alternativeCallback: () {},
                alternativeTitle: 'SIGN-IN INSTEAD',
                facebookButtonCallback: () {},
                firstButtonCallback: () {
                  if (formGlobalKey.currentState!.validate()) {}

                },
                googleButtonCallback: () {},
                firstButtonTitle: 'Continue',
                firstButtonColor: firstnameController.text.isEmpty|| lastnameController.text.isEmpty ?  const Color(0xff181818).withOpacity(0.49): const Color(0xff181818),
                firstButtonBorderColor:
                const Color(0xff181818).withOpacity(0.49),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
