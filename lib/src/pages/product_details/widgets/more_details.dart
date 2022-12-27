part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';


class MoreDetails extends StatelessWidget {
  const MoreDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox.verticalSpace(15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Text('Size',style: GoogleFonts.prompt(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: const Color(0xff181818),
            ),
            ),
            Text('Medium',style: GoogleFonts.prompt(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: const Color(0xff181818),
            ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8,bottom: 12),
          child: Divider(
            thickness: 0.5,
            color: Color(0xff555555),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Brand',style: GoogleFonts.prompt(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: const Color(0xff181818),
            ),
            ),
            Text('Lv',style: GoogleFonts.prompt(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: const Color(0xff181818),
            ),
            ),
          ],
        ),
        CustomSizedBox.verticalSpace(7),
        CGangButton(title: 'Contact Seller', buttonHeight: 0.07, buttonWidth:1, buttonColor: const Color(0xff181818), callBack: (){},borderRadius: 4,),
      ],
    );
  }
}
