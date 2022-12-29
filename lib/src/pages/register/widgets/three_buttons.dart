part of 'package:cotton_gang/src/pages/register/register_page.dart';


class ThreeButtons extends StatelessWidget {
  final String firstButtonTitle, alternativeTitle;
  final Function firstButtonCallback;
  final Function facebookButtonCallback,
      googleButtonCallback,
      alternativeCallback;
  final Color firstButtonColor, firstButtonBorderColor;

  const ThreeButtons(
      {required this.firstButtonBorderColor,
        required this.firstButtonColor,
        required this.alternativeCallback,
        required this.alternativeTitle,
        required this.googleButtonCallback,
        required this.facebookButtonCallback,
        required this.firstButtonTitle,
        required this.firstButtonCallback,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CGangButton(
          title: firstButtonTitle,
          buttonHeight: 0.060,
          buttonWidth: 1,
          buttonColor: firstButtonColor,
          callBack: () {
            firstButtonCallback();
          },
          textStyle: GoogleFonts.prompt(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: const Color(0xffF9F9F9)),
          borderRadius: 4,
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
              callBack: () {
                firstButtonCallback();
              },
              textStyle: GoogleFonts.prompt(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color(0xffF9F9F9)),
              borderRadius: 4,
            ),
            CGangButton(
              title: 'Google',
              buttonHeight: 0.060,
              buttonWidth: 0.413,
              buttonColor: const Color(0xffDE5246),
              callBack: () {
                googleButtonCallback();
              },
              textStyle: GoogleFonts.prompt(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: const Color(0xffF9F9F9)),
              borderRadius: 4,
            ),
          ],
        ),
        CustomSizedBox.verticalSpace(30),
        const Divider(
          color: Color(0xff697367),
          thickness: 0.6,
        ),
        Center(
          child: TextButton(
              onPressed: () {
                alternativeCallback();
              },
              child: Text(alternativeTitle,
                  style: GoogleFonts.prompt(
                    textStyle: const TextStyle(
                      color: Color(0xff3B5998),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ))),
        )
      ],
    );
  }
}
