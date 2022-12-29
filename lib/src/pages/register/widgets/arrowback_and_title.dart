part of 'package:cotton_gang/src/pages/register/register_page.dart';


class ArrowBackAndTitle extends StatelessWidget {
  final String title;
  final double height, width;
  final Function arrowBackCallback;
  const ArrowBackAndTitle({required this.title,required this.arrowBackCallback,required this.width,required this.height,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height,
          width: width,
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
      ],
    );
  }
}
