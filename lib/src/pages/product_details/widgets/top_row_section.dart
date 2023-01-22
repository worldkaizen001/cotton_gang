part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';


class TopRowSection extends StatelessWidget {
  final String title;
  const TopRowSection({required this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
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
        CustomSizedBox.horizontalSpace(60),
        Center(
          child: Text(
            title,
            style: GoogleFonts.prompt(
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: const Color(0xff181818),
            ),
          ),
        ),
      ],
    );
  }
}
