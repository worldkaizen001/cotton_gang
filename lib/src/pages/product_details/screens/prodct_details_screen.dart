part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  dynamic currentState;
  dynamic current;

  final controller = PageController();
  List <dynamic> btnList = [
    {"title":"Description", "isClicked":false},
    {"title":"More Details", "isClicked":false},
    {"title":"reviews", "isClicked":false}
  ];

  List<dynamic> mainBtnList = [
    'Man','woman','Children'
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
                CustomSizedBox.verticalSpace(41),
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
                                image: const DecorationImage(
                                    image: AssetImage(CGangImages.lvBag),
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
                                image: const DecorationImage(
                                    image: AssetImage(CGangImages.lvBag),
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
                                image: const DecorationImage(
                                    image: AssetImage(CGangImages.lvBag),
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
                     itemCount: mainBtnList.length,
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
                           margin: EdgeInsets.only(left: 5,right: 5),
                           decoration: BoxDecoration(
                             color: currentState == index? const Color(0xff39FF14): Colors.grey,
                             borderRadius: currentState == index? BorderRadius.circular(6): BorderRadius.circular(6),

                             ),
                           child: Center(
                             child: Text(mainBtnList[index],
                           )),
                           ),

                       );
                     }),
               ),
                if(currentState == 0)
                   Container(
                     color: Colors.blue,
                     height: 50,
                     width: 100,
                   ),
                if(currentState == 1)
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 300,
                  ),
                if(currentState == 2)
                  Container(
                    color: Colors.pink,
                    height: 50,
                    width: 100,
                  ),


               

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
