part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';


class ReviewComments extends StatefulWidget {
  const ReviewComments({Key? key}) : super(key: key);

  @override
  State<ReviewComments> createState() => _ReviewCommentsState();
}

class _ReviewCommentsState extends State<ReviewComments> {

  final reviewController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox.verticalSpace(18),
        Text('Write review',style: GoogleFonts.prompt(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: const Color(0xff555555),
        ),),
        Padding(
          padding: const  EdgeInsets.only( top: 6),
          child: CGangTextField(
            controller:  reviewController,
            validator: (val) {
              return null;
            },
            onChanged: (val) {
              setState(() {

              });
              return null;
            },
            width: 1,
            obscure: false,
            cursorColor: const  Color(0xff181818),

          ),
        ),
        CGangButton(title: 'Submit', buttonHeight: 0.04, buttonWidth:0.25, buttonColor: const Color(0xff181818), callBack: (){},borderRadius: 4,),
        CustomSizedBox.verticalSpace(20),
        Column(
          children: reviews.map((obj){
            var cmt = obj["comments"];
            var name = obj["name"];
            var img = obj["image"];


            return ReviewCard(comment: cmt, name: name,images:img,);
          }).toList(),
        ),

      ],
    );
  }
}