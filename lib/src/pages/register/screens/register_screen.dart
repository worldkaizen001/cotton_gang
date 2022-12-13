part of 'package:cotton_gang/src/pages/register/register_page.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
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
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 16,
                    ),
                  ),
                ),
              ),
              CustomSizedBox.verticalSpace(20),

              Text(
                'Sign-Up',
                style: GoogleFonts.prompt(
                  textStyle: const TextStyle(
                    color: Color(0xff181818),
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              CustomSizedBox.verticalSpace(24),
              Text(
                'First name',
                style: GoogleFonts.prompt(
                  textStyle: const TextStyle(
                    color: Color(0xff5E6368),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              CustomSizedBox.verticalSpace(2),
              CGangTextField(
                validator: (val) {},
                onChanged: (val) {},
                height: 0.060,
                width: 1,
                color: const Color(0xffE1DBDB),
              ),
              CustomSizedBox.verticalSpace(15),
              Text(
                'Last name',
                style: GoogleFonts.prompt(
                  textStyle: const TextStyle(
                    color: Color(0xff5E6368),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              CustomSizedBox.verticalSpace(2),
              CGangTextField(
                validator: (val) {},
                onChanged: (val) {},
                height: 0.060,
                width: 1,
                color: const Color(0xffE1DBDB),
              ),
              CustomSizedBox.verticalSpace(40),
              CGangButton(
                title: 'Continue',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor: const Color(0xff181818).withOpacity(0.49),
                callBack: () {},
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xffF9F9F9)),
                borderRadius: 4,
                borderColor: const Color(0xff181818).withOpacity(0.00),
              ),
              CustomSizedBox.verticalSpace(28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CGangButton(
                    title: 'Facebook',
                    buttonHeight: 0.060,
                    buttonWidth: 0.413,
                    buttonColor: const Color(0xff3B5998),
                    callBack: () {},
                    textStyle: GoogleFonts.prompt(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xffF9F9F9)),
                    borderRadius: 4,
                    borderColor: const Color(0xff181818).withOpacity(0.00),
                  ),
                  CGangButton(
                    title: 'Google',
                    buttonHeight: 0.060,
                    buttonWidth: 0.413,
                    buttonColor: const Color(0xffDE5246),
                    callBack: () {},
                    textStyle: GoogleFonts.prompt(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: const Color(0xffF9F9F9)),
                    borderRadius: 4,
                    borderColor: const Color(0xff181818).withOpacity(0.00),
                  ),
                ],
              ),
              CustomSizedBox.verticalSpace(36),
              const Divider(
                color: Color(0xff697367),
                thickness: 0.6,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text('SIGN-IN INSTEAD',
                        style: GoogleFonts.prompt(
                          textStyle: const TextStyle(
                            color: Color(0xff3B5998),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
