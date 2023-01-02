part of  'package:cotton_gang/src/pages/whatsapp_link/whatsapp_page.dart';

class WhatsAppLinkScreen extends StatelessWidget {
  const WhatsAppLinkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final whatsappController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          const TitleAndCloseButton(title:' Notification'),
          CustomSizedBox.verticalSpace(15),
          Text('Enter your business whatsapp Link to be able to connect with your customers.',style: GoogleFonts.prompt(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: const Color(0xff181818)),),
          CustomSizedBox.verticalSpace(10),
          SizedBox(
            height: 53,
            width: double.infinity,
            child: Card(
              color: Color(0xff1D8909).withOpacity(0.23),
              child: Column(
                children: [
                  Text('Tip',style: GoogleFonts.prompt(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                      color: const Color(0xff181818)),),
                  CustomSizedBox.verticalSpace(3),

                  Text('Customize a unique message to your link',style:  GoogleFonts.prompt(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                      color: const Color(0xff181818)),)
                ],
              ),
            ),
          ),
          CustomSizedBox.verticalSpace(3),
          Text('Whatsapp Link',style: GoogleFonts.prompt(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: const Color(0xff181818)),),
          CustomSizedBox.verticalSpace(2),
          CGangTextField(controller: whatsappController)




        ],
      ),

    );
  }
}

