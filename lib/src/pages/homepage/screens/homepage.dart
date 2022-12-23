part of 'package:cotton_gang/src/pages/homepage/homepage_page.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: SafeArea(
        child: Column(
          children: [
            ImageAndTitle(
              iconCallback: () {},
              title: 'Home',
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
                  child: Stack(
                    children: [
                      Container(
                        height: 216,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: const DecorationImage(
                                image: AssetImage(
                                  CGangImages.product1,
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        right: 20,
                        top: 20,
                        child: Center(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 40.0,
                                sigmaY: 40.0,
                              ),
                              child: Container(
                                color: Colors.black.withOpacity(0.45),
                                height: 40,
                                width: 40,
                                child: const Center(
                                  child: Icon(
                                    Iconsax.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 13,
                        bottom: 16,
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
                                        text: ' 2000'),
                                  ])),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          right: 13,
                          bottom: 16,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Iconsax.heart),
                            color: Color(0xff39FF14),
                          )),
                      Positioned(
                        left: 20,
                        top: 20,
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 40.0,
                                sigmaY: 40.0,
                              ),
                              child: Container(
                                color: Colors.black.withOpacity(0.45),
                                height: 38,
                                width: 100,
                                child: Center(
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage(CGangImages.female),
                                      ),
                                      CustomSizedBox.horizontalSpace(2),
                                      Text(
                                        'lawman mark',
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
                      ),

                    ],
                  ),
                ),
                const TitleAndDescription()
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class TitleAndDescription extends StatelessWidget {

  const TitleAndDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Brown Nikes',
            style: GoogleFonts.prompt(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: const Color(0xff181818),
            ),
          ),
          CustomSizedBox.verticalSpace(10),
          Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.', style:  GoogleFonts.prompt(
            fontSize: 11,
            fontWeight: FontWeight.w300,
            color: const Color(0xff181818),),)
        ],
      ),
    );
  }
}


class ImageAndTitle extends StatelessWidget {
  final String title;
  final Function iconCallback;

  const ImageAndTitle(
      {required this.iconCallback, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 51),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                CGangImages.logo,
                height: 42,
                width: 42,
              ),
              IconButton(
                  onPressed: () {
                    iconCallback();
                  },
                  icon: const Icon(
                    Iconsax.menu,
                    color: Color(0xff181818),
                    size: 28,
                  ))
            ],
          ),
          CustomSizedBox.verticalSpace(20),
          Text(
            title,
            style: GoogleFonts.prompt(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: const Color(0xff555555),
            ),
          ),
        ],
      ),
    );
  }
}

AppBar customAppBar() {
  return AppBar(
    elevation: 0.0,
    automaticallyImplyLeading: false,
    backgroundColor: const Color(0xffF9F9F9),
    toolbarHeight: 100,
    leadingWidth: 60,
    leading: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Image.asset(
        CGangImages.logo,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.menu,
              color: Color(0xff181818),
            )),
      ),
    ],
  );
}
