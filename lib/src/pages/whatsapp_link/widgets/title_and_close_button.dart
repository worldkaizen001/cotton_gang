part of  'package:cotton_gang/src/pages/whatsapp_link/whatsapp_page.dart';


class TitleAndCloseButton extends StatelessWidget {
  final String title;
  const TitleAndCloseButton({required this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 18,
          width: 18,
          child: CloseButton(
            onPressed: (){
              Navigator.pop(context);
            },

            color: Color(0xff697367),

          ),
        ),
        CustomSizedBox.verticalSpace(24),
        Text(title,style: GoogleFonts.prompt(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: const Color(0xff181818)))
      ],
    );
  }
}
