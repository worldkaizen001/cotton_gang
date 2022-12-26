import 'package:cotton_gang/src/helpers/custome_sizedbox.dart';
import 'package:cotton_gang/src/helpers/images.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericEmptyState extends StatelessWidget {
  final String emptyStateImage,firstText, secondText;
  const GenericEmptyState({required this.emptyStateImage,required this.firstText,required this.secondText,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
             emptyStateImage,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            CustomSizedBox.verticalSpace(20),
            Text(
              firstText,
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: const Color(0xff0E3A06),
              ),
            ),
            CustomSizedBox.verticalSpace(10),
            Text(
              secondText,
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color(0xff0E3A06),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
