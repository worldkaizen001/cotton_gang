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
            ],
          ),
        ),
      ),
    );
  }
}

