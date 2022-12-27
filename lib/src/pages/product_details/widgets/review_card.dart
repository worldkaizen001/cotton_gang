part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';


class ReviewCard extends StatelessWidget {
  final String images, name, comment;
  const ReviewCard({required this.images,required this.name,required this.comment,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(images),
            ),
            CustomSizedBox.horizontalSpace(10),
            Text(name,style: GoogleFonts.prompt(
              fontWeight: FontWeight.w500,
              fontSize:12,
              color: const Color(0xff181818),
            ),),
          ],
        ),
        CustomSizedBox.verticalSpace(7),
        Text(comment,style: GoogleFonts.prompt(
          fontWeight: FontWeight.w400,
          fontSize:13,
          color: const Color(0xff181818),
        ),),
        CustomSizedBox.verticalSpace(20),


      ],
    );
  }
}
