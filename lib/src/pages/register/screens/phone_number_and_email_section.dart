part of 'package:cotton_gang/src/pages/register/register_page.dart';

class PhoneAndEmailScreen extends StatelessWidget {
  const PhoneAndEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
        child: Form(
          key: formGlobalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegistrationComponent(
                arrowBackCallback: () {},
                buttonCallback: () {
                  if (formGlobalKey.currentState!.validate()) {}
                },
                controllerOne: phoneController,
                controllerTwo: emailController,
                title: 'Sign-Up',
                subtitleOne: 'Phone number',
                subtitleTwo: 'Email address',
                validatorOne: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter password';
                  } else if (val.length < 6) {
                    return 'Password is too short';
                  }

                  return null;
                },
                validatorTwo: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter password';
                  }
                  if (val.length < 6) {
                    return 'Password is too short';
                  }

                  return null;
                },
              ),
              ArrowBackAndTitle(
                width: 40,
                height: 40,
                arrowBackCallback: () {},
                title: 'Sign-Up',
              ),
              TextFieldAndTitle(

                controller: phoneController,

                title: 'Create password',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter password';
                  }
                  if (val.length < 6) {
                    return 'Password is too short';
                  }

                  return null;
                },
                obscure: false,
                onChanged: (_) {

                },
              ),
              CustomSizedBox.verticalSpace(5),
              TextFieldAndTitle(
                controller: emailController,
                suffixIconFunction: (){

                },
                title: 'Confirm password',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter password';
                  }
                  if (val.length < 6) {
                    return 'Password is too short';
                  }



                  return null;
                },
                obscure: false,
                onChanged: (_) {

                },
              ),
              CustomSizedBox.verticalSpace(40),
              CGangButton(
                title: 'Sign-up',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor: phoneController.text.isEmpty || emailController.text.isEmpty?  const Color(0xff181818).withOpacity(0.49) : Colors.teal,
                callBack: () {
                  if (formGlobalKey.currentState!.validate()) {}

                },
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xffF9F9F9)),
                borderRadius: 4,
                borderColor: const Color(0xff181818).withOpacity(0.02),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

