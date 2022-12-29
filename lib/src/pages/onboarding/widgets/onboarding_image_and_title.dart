part of 'package:cotton_gang/src/pages/onboarding/onboarding_page.dart';


class OnboadringImagesAndTitle extends StatelessWidget {
  final String images, title, description;

  const OnboadringImagesAndTitle(
      {required this.images,
        required this.title,
        required this.description,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          images,
          height: ScreenSize.height(context) * 0.32,
          width: ScreenSize.width(context) * 0.45,
        ),
        // CustomSizedBox.verticalSpace(38),
        Text(
          title,
          style: GoogleFonts.prompt(
            textStyle: const TextStyle(
              color: Color(0xff181818),
              fontSize: 23,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CustomSizedBox.verticalSpace(7),
        Text(
          description,
          textAlign: TextAlign.center,
          // overflow: TextOverflow.ellipsis,
          style: GoogleFonts.prompt(
            textStyle: const TextStyle(
              color: Color(0xff697367),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
