part of 'package:cotton_gang/src/pages/forget_password/forget_password_page.dart';


class ImageAndTitle extends StatelessWidget {
  const ImageAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
