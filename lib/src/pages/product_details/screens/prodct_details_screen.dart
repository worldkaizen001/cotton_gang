part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';

class ProductDetailsScreen extends StatefulWidget {
  final double price;
  final String ownerName;
  final String productName,productDescription,productImage;
  final List<String> newImages;

  const ProductDetailsScreen({required this.newImages,required this.productImage,required this.price,required this.ownerName,required this.productDescription,required this.productName,Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  dynamic currentState;
  dynamic current;


  final controller = PageController();
  List <Map<String, dynamic>> btnList = [
    {"title":"Description", "isClicked":false},
    {"title":"More Details", "isClicked":false},
    {"title":"reviews", "isClicked":false}
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                        'Product details',
                        style: GoogleFonts.prompt(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: const Color(0xff181818),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomSizedBox.verticalSpace(30),
                SizedBox(
                  height: 380,
                  child: PageView(
                    controller: controller,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 380,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                image:  DecorationImage(
                                    image: AssetImage(widget.newImages[0]),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            right: 27,
                            bottom: 37,
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 40.0,
                                    sigmaY: 40.0,
                                  ),
                                  child: Container(
                                    color: Colors.black.withOpacity(0.45),
                                    height: 30,
                                    width: 90,
                                    child: Center(
                                      child: RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            style: GoogleFonts.prompt(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: const Color(0xfff5f5f5),
                                            ),
                                            text: '\$'),
                                        TextSpan(
                                            style: GoogleFonts.prompt(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: const Color(0xfff5f5f5),
                                            ),
                                            text: widget.price.toString()),
                                      ])),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 380,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                image:  DecorationImage(
                                    image: AssetImage(widget.newImages[1]),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            right: 27,
                            bottom: 37,
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 40.0,
                                    sigmaY: 40.0,
                                  ),
                                  child: Container(
                                    color: Colors.black.withOpacity(0.45),
                                    height: 30,
                                    width: 90,
                                    child: Center(
                                      child: RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            style: GoogleFonts.prompt(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: const Color(0xfff5f5f5),
                                            ),
                                            text: '\$'),
                                        TextSpan(
                                            style: GoogleFonts.prompt(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: const Color(0xfff5f5f5),
                                            ),
                                            text: '2000'),
                                      ])),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 380,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                image:  DecorationImage(
                                    image: AssetImage(widget.newImages[2]),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            right: 27,
                            bottom: 37,
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 40.0,
                                    sigmaY: 40.0,
                                  ),
                                  child: Container(
                                    color: Colors.black.withOpacity(0.45),
                                    height: 30,
                                    width: 90,
                                    child: Center(
                                      child: RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            style: GoogleFonts.prompt(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: const Color(0xfff5f5f5),
                                            ),
                                            text: '\$'),
                                        TextSpan(
                                            style: GoogleFonts.prompt(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: const Color(0xfff5f5f5),
                                            ),
                                            text: '2000'),
                                      ])),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomSizedBox.verticalSpace(25),
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    // axisDirection: Axis.vertical,
                    effect: const ExpandingDotsEffect(
                        radius: 5,
                        dotHeight: 6,
                        dotWidth: 8,
                        dotColor: Color(0xffDBD8D8),
                        activeDotColor: Color(0xff181818)),
                  ),
                ),
                CustomSizedBox.verticalSpace(25),



               SizedBox(
                 height: 30,
                 child:  ListView.builder(
                   scrollDirection: Axis.horizontal,
                     itemCount:  btnList.length,
                     itemBuilder: (context, index){

                       return GestureDetector(
                         onTap:
                             (){
                           setState(() {
                             currentState = index;
                             print(currentState);
                           });
                         },
                         child: AnimatedContainer(


                           duration: const Duration(milliseconds: 300),
                           curve: Curves.linearToEaseOut,
                           width: 107,
                           margin:const EdgeInsets.only(left: 5,right: 5),
                           decoration: BoxDecoration(
                             color: currentState == index? const Color(0xff39FF14): Colors.grey,
                             borderRadius: currentState == index? BorderRadius.circular(6): BorderRadius.circular(6),

                             ),
                           child: Center(
                             child: Text( btnList[index]["title"],
                           )),
                           ),

                       );
                     }),
               ),
                if(currentState == 0)
                  Description(ownerName: widget.ownerName,productName: widget.productName,productDescription: widget.productDescription,),
                if(currentState == 1)
                  const MoreDetails(
                  ),
                if(currentState == 2)
                  const ReviewComments(),




              ],
            ),
          ),
        ),
      ),
    );
  }
}


class btnShit extends StatelessWidget {
  final String title;
  final Function isClicked;
  const btnShit({required this.isClicked,required this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      isClicked();
    }, child: Text(title));
  }
}


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

class Description  extends StatelessWidget {
  final String ownerName,productName,productDescription;
  const Description ({required this. ownerName,required this.productName,required this.productDescription,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16,bottom: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 40.0,
                      sigmaY: 40.0,
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.45),
                      height: 30,
                      width: 90,
                      child: Center(
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(CGangImages.female),
                            ),
                            CustomSizedBox.horizontalSpace(4),
                            Text(
                              ownerName,
                              style: GoogleFonts.prompt(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xfff9f9f9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 42,
                width: 90,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('100 likes',style: GoogleFonts.prompt(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffF9F9F9),
                      ),),
                      Icon(
                        Iconsax.heart,
                        size: 20,
                        color: Color(0xff39FF14),
                      )
                    ],
                  ) ,
                  color: Color(0xff181818),
                ),
              ),
            ],
          ),
        ),
        Text(productName,style:  GoogleFonts.prompt(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: const Color(0xff181818),
        ),),
        Text(productDescription,style:  GoogleFonts.prompt(
          fontSize: 13,
          fontWeight: FontWeight.w300,
          color: const Color(0xff555555),
        ),),
        CustomSizedBox.verticalSpace(10),

        CGangButton(title: 'Contact Seller', buttonHeight: 0.07, buttonWidth:1, buttonColor: const Color(0xff181818), callBack: (){},borderRadius: 4,),



      ],
    );
  }
}

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

List<dynamic> reviews =[
  {"name": "jane Bo", "image": CGangImages.logo, "comments": "I found a 2007 study on effects of hand sanitizers on blood alcohol level in adults. The 12 subjects applied 4 mL of hand sanitizer for 30 seconds per application, 20 applications over a 30 min period (total exposure time 10 min).",},
  {  "name": "welter ku", "image": CGangImages.female, "comments": "I found a 2007 study on effects of hand sanitizers on blood alcohol level in adults. The 12 subjects applied 4 mL of hand sanitizer for 30 seconds per application, 20 applications over a 30 min period (total exposure time 10 min).",}
];

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


