part of 'package:cotton_gang/src/pages/register/register_page.dart';


class RegistrationComponent extends StatelessWidget {
  final String? Function(String?) validatorOne, validatorTwo;

  final Function arrowBackCallback, buttonCallback;
  final String title, subtitleOne, subtitleTwo;
  final TextEditingController controllerOne, controllerTwo;
  final Color? suffixIconColor, suffixIconColor2;
  final IconData? suffixIcon, suffixIcon2;
  final Function? suffixIconFunction, suffixIconFunction2;
  final bool? obscure;
  final bool? obscure2;

  const RegistrationComponent(
      {required this.buttonCallback,
        this.suffixIcon,
        this.suffixIconColor2,
        this.suffixIconFunction2,
        this.obscure,
        this.obscure2,
        this.suffixIconColor,
        this.suffixIconFunction,
        required this.validatorTwo,
        required this.validatorOne,
        required this.controllerOne,
        required this.controllerTwo,
        required this.arrowBackCallback,
        required this.title,
        required this.subtitleOne,
        required this.subtitleTwo,
        Key? key,
        this.suffixIcon2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: InkWell(
            onTap: () {
              arrowBackCallback();
            },
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
          title,
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
          subtitleOne,
          style: GoogleFonts.prompt(
            textStyle: const TextStyle(
              color: Color(0xff5E6368),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CustomSizedBox.verticalSpace(5),
        CGangTextField(
          obscure: obscure,
          cursorColor: const Color(0xff181818),
          controller: controllerOne,
          validator: validatorOne,
          onChanged: (val) {},
          height: 0.060,
          width: 1,
          color: const Color(0xffE1DBDB),
          suffixIconColor: suffixIconColor,
          suffixIconFunction: () {
            suffixIconFunction!();
          },
          suffixIcon: suffixIcon,
        ),
        CustomSizedBox.verticalSpace(15),
        Text(
          subtitleTwo,
          style: GoogleFonts.prompt(
            textStyle: const TextStyle(
              color: Color(0xff5E6368),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CustomSizedBox.verticalSpace(5),
        CGangTextField(
          suffixIcon: suffixIcon2,
          suffixIconFunction: suffixIconFunction2,
          obscure: obscure2,
          cursorColor: const Color(0xff181818),
          controller: controllerTwo,
          suffixIconColor: const Color(0xff8B8B8B),
          validator: validatorTwo,
          onChanged: (val) {},
          height: 0.085,
          width: 1,
          color: const Color(0xffE1DBDB),
        ),
        CustomSizedBox.verticalSpace(40),
        CGangButton(
          title: 'Continue',
          buttonHeight: 0.060,
          buttonWidth: 1,
          buttonColor: const Color(0xff181818).withOpacity(0.49),
          callBack: () {
            buttonCallback();
          },
          textStyle: GoogleFonts.prompt(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: const Color(0xffF9F9F9)),
          borderRadius: 4,
          borderColor: const Color(0xff181818).withOpacity(0.00),
        ),
      ],
    );
  }
}
