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
            const ImageAndTitle(),

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


