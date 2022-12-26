part of 'package:cotton_gang/src/pages/forget_password/forget_password_page.dart';

class GmailScreen extends StatelessWidget {
  const GmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
        child: Column(
          children: [
            Image.asset(
              CGangImages.envelop,
              height: 112,
              width: 112,
              fit: BoxFit.cover,
            ),
            CustomSizedBox.verticalSpace(40),
            Text(
              'Open your mail',
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: const Color(0xff181818),
              ),
            ),
            CustomSizedBox.verticalSpace(7),
            Text(
              'We have sent a password recovery \ninstructions to your email',
              textAlign: TextAlign.center,
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color(0xff697367),
              ),
            ),
            CustomSizedBox.verticalSpace(120),

            Center(
              child: CGangButton(
                title: 'Open email app',
                buttonHeight: 0.060,
                buttonWidth: 0.5,
                buttonColor: const Color(0xff181818),
                callBack: () {},
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xffF9F9F9)),
                borderRadius: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
