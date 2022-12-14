part of 'package:cotton_gang/src/pages/register/register_page.dart';


class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  final formGlobalKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool obscure = false;
  bool diff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 50),
        child: Form(
          key: formGlobalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              RegistrationComponent(
                suffixIcon2:diff? Icons.visibility_outlined : Icons.visibility_off ,
                suffixIconColor2: const Color(0xff8B8B8B),
                suffixIconFunction2: (){
                  setState(() {
                    diff = !diff;
                  });
                },
                obscure2: diff,
                obscure: diff,
                suffixIconColor: const Color(0xff8B8B8B),

                suffixIconFunction: (){
                  setState(() {
                    diff = !diff;
                  });
                },
                suffixIcon:diff? Icons.visibility_outlined : Icons.visibility_off,
                arrowBackCallback: () {},
                buttonCallback: () {
                  if (formGlobalKey.currentState!.validate()) {}
                },
                controllerOne: passwordController,
                controllerTwo: confirmPasswordController,
                title: 'Sign-Up',
                subtitleOne: 'Create password',
                subtitleTwo: 'Confirm password',
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

            ],),
        ),
      ),
    );
  }
}
