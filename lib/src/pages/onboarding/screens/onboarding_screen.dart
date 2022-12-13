part of 'package:cotton_gang/src/pages/onboarding/onboarding_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(CGangImages.boarding1),
              ),
              SizedBox(
                height: ScreenSize.height(context) * 0.48,
                child: PageView(controller: controller, children: const [
                  OnboadringImagesAndTitle(
                    images: CGangImages.boarding1,
                    title: 'Affordable',
                    description:
                        'Purchase finese clothes that are within your budget.',
                  ),
                  OnboadringImagesAndTitle(
                    images: CGangImages.boarding2,
                    title: 'Discover',
                    description:
                        'Discover dope clothes and vendors withi your location.',
                  ),
                  OnboadringImagesAndTitle(
                    images: CGangImages.boarding2,
                    title: 'Earn',
                    description:
                        'Make more money by posting and sharing your products on cotton gang .',
                  ),
                ]),
              ),
              CustomSizedBox.verticalSpace(35),
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
              CustomSizedBox.verticalSpace(40),
              CGangButton(
                title: 'Sign Up',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor: const Color(0xff181818),
                callBack: () {},
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xffF9F9F9)),
                borderRadius: 4,
                borderColor: const Color(0xff181818),
              ),
              CustomSizedBox.verticalSpace(15),
              CGangButton(
                title: 'Sign In',
                buttonHeight: 0.060,
                buttonWidth: 1,
                buttonColor: const Color(0xffF9F9F9),
                callBack: () {},
                textStyle: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color(0xff181818)),
                borderColor: const Color(0xff181818),
                borderRadius: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
