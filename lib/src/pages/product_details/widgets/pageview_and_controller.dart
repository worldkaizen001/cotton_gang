part of 'package:cotton_gang/src/pages/product_details/product_details_page.dart';


class PageViewAndController extends StatefulWidget {
  final PageController controller;
  final double price;
  final List<String> newImages;
  const PageViewAndController({required this.newImages,required this.price,required this.controller,Key? key}) : super(key: key);

  @override
  State<PageViewAndController> createState() => _PageViewAndControllerState();
}

class _PageViewAndControllerState extends State<PageViewAndController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 380,
          child: PageView(
            controller: widget.controller,
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
            controller: widget.controller,
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
      ],
    );
  }
}