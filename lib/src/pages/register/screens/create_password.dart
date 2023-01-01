part of 'package:cotton_gang/src/pages/register/register_page.dart';

class CreatePassword extends StatefulWidget {
  final TextEditingController fname,lname;
  const CreatePassword({required this.fname,required this.lname,Key? key}) : super(key: key);

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
        padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
        child: Form(
          key: formGlobalKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
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

                controller: passwordController,
                suffixIconColor:  const Color(0xff8B8B8B),
                suffixIcon: obscure ? Icons.visibility_outlined : Icons.visibility_off,
                suffixIconFunction: (){
                  setState(() {
                    obscure =! obscure;
                  });
                },
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
                obscure: obscure,
                onChanged: (_) {
                  setState(() {


                  });
                  return null;
                },
              ),
              CustomSizedBox.verticalSpace(5),
              TextFieldAndTitle(
                controller: confirmPasswordController,
                suffixIconColor:  const Color(0xff8B8B8B),
                suffixIcon: obscure ? Icons.visibility_outlined : Icons.visibility_off,
                suffixIconFunction: (){
                  setState(() {
                    obscure =! obscure;
                  });
                },
                title: 'Confirm password',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please enter password';
                  }
                  if (val.length < 6) {
                    return 'Password is too short';
                  }
                  if(passwordController.text != confirmPasswordController.text){
                    return 'Password does not match';
                  }

                  return null;
                },
                obscure: obscure,
                onChanged: (_) {
                  setState(() {

                  });
                  return null;
                },
              ),
              CustomSizedBox.verticalSpace(40),
              CGangButton(
                title: 'Continue',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor: passwordController.text.isEmpty || confirmPasswordController.text.isEmpty?  const Color(0xff181818).withOpacity(0.49) : const Color(0xff181818),
                callBack:passwordController.text.isEmpty || confirmPasswordController.text.isEmpty? (){
                  debugPrint('no way o');
                }: () {
                  if (formGlobalKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return PhoneAndEmailScreen(pword: passwordController,cpword: confirmPasswordController,lname:widget.lname,fname: widget.fname,);}));
                  }

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
