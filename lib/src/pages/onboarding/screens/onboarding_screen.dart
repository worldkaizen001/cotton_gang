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
      body: Column(
        children: [
          PageView(controller: controller, children: []),
          SmoothPageIndicator(
            controller: controller,
            count:  6,
            axisDirection: Axis.vertical,
            effect:  const SlideEffect(
                spacing:  8.0,
                radius:  4.0,
                dotWidth:  24.0,
                dotHeight:  16.0,
                paintStyle:  PaintingStyle.stroke,
                strokeWidth:  1.5,
                dotColor:  Colors.grey,
                activeDotColor:  Colors.indigo
            ),
          )
        ],
      ),
    );
  }
}


