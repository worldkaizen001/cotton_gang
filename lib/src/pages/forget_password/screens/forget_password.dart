part of 'package:cotton_gang/src/pages/forget_password/forget_password_page.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final emailController = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
          child: Form(
            key: formGlobalKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: const BorderSide(color: Color(0xffE1DBDB))),
                      elevation: 1.2,
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 16,
                      ),
                    ),
                  ),
                ),
                CustomSizedBox.verticalSpace(20),
                Text(
                  'Reset password',
                  style: GoogleFonts.prompt(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                    color: const Color(0xff181818),
                  ),
                ),
                CustomSizedBox.verticalSpace(5),
                Text(
                  'Enter the email linked to your account and we’ll send an email instruction to rest your password',
                  style: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xff697367),
                  ),
                ),
                CustomSizedBox.verticalSpace(15),
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
                  onChanged: (_) {
                    setState(() {});
                    return null;
                  },
                ),
                CustomSizedBox.verticalSpace(67),
                CGangButton(
                  title: 'Send Instruction',
                  buttonHeight: 0.060,
                  buttonWidth: 1,
                  buttonColor:   emailController.text.isEmpty? Color(0xff181818).withOpacity(0.49):Color(0xff181818),
                  callBack:  () {
                    if (formGlobalKey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> GmailScreen()));
                    }

                  },
                  textStyle: GoogleFonts.prompt(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: const Color(0xffF9F9F9)),
                  borderRadius: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
