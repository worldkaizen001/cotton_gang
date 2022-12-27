part of 'package:cotton_gang/src/pages/homepage/homepage_page.dart';


class TitleAndDescription extends StatelessWidget {
  final String productTitle, productDescription;

  const TitleAndDescription(
      {required this.productTitle, required this.productDescription, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productTitle,
            style: GoogleFonts.prompt(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: const Color(0xff181818),
            ),
          ),
          CustomSizedBox.verticalSpace(10),
          Text(
            productDescription,
            style: GoogleFonts.prompt(
              fontSize: 11,
              fontWeight: FontWeight.w300,
              color: const Color(0xff181818),
            ),
          )
        ],
      ),
    );
  }
}
