part of 'package:cotton_gang/src/pages/forget_password/forget_password_page.dart';


class IconAndTitleSection extends StatelessWidget {
  const IconAndTitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SizedBox(
          height: 40,
          width: 40,
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
        CustomSizedBox.verticalSpace(20),
        Text(
          'Reset password',
          style: GoogleFonts.prompt(
            fontWeight: FontWeight.w600,
            fontSize: 28,
            color: const Color(0xff181818),
          ),
        ),
        CustomSizedBox.verticalSpace(5),
        Text(
          'Enter the email linked to your account and we’ll send an email instruction to rest your password',
          style: GoogleFonts.prompt(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: const Color(0xff697367),
          ),
        ),
        CustomSizedBox.verticalSpace(15),
      ],
    );
  }
}
