part of 'package:cotton_gang/src/pages/homepage/homepage_page.dart';

class Titles extends StatelessWidget {
  final String title;

  const Titles({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Text(
        title,
        style: GoogleFonts.prompt(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: const Color(0xff555555),
        ),
      ),
    );
  }
}
