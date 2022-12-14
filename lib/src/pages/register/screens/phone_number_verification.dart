part of 'package:cotton_gang/src/pages/register/register_page.dart';

class PhoneNumberVerification extends StatelessWidget {
  const PhoneNumberVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final codeEditor = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
        child: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: 50,
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
              CustomSizedBox.verticalSpace(50),
              Center(
                child: Image.asset(
                  CGangImages.numberVerification,
                  height: ScreenSize.height(context) * 0.23,
                  width: ScreenSize.width(context) * 0.45,
                ),
              ),
              CustomSizedBox.verticalSpace(40),
              Text(
                'OTP Verification',
                style: GoogleFonts.prompt(
                  textStyle: const TextStyle(
                    color: Color(0xff181818),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              CustomSizedBox.verticalSpace(9),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Enter the OTP sent to ',
                    style: GoogleFonts.prompt(
                      textStyle: const TextStyle(
                        color: Color(0xff697367),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  TextSpan(

                      text: '081026760345',
                      style: GoogleFonts.prompt(
                        textStyle: const TextStyle(
                          color: Color(0xff1D8909),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ))
                ]),
              ),
              CustomSizedBox.verticalSpace(25),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: PinFieldAutoFill(
                  autoFocus: true,
                  codeLength: 4,
                  controller: codeEditor,
                  onCodeChanged: (val) {},
                ),
              ),
              CustomSizedBox.verticalSpace(60),
              CGangButton(
                title: 'Submit',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor:  const Color(0xff181818).withOpacity(0.49),
                callBack: () {},
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xffffffff)),
                borderRadius: 4,
                borderColor: const Color(0xff181818).withOpacity(0.49),
              ),
              CustomSizedBox.verticalSpace(40),

              Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Didn’t receive the code? ',
                      style: GoogleFonts.prompt(
                        textStyle: const TextStyle(
                          color: Color(0xff697367),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextSpan(

                        text: 'Resend Code',
                        style: GoogleFonts.prompt(
                          textStyle: const TextStyle(
                            color: Color(0xff1D8909),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ))
                  ]),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
