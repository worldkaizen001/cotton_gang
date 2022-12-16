part of 'package:cotton_gang/src/pages/onboarding/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
      duration: const Duration(seconds: 5), vsync: this)
    ..repeat(reverse: false);
  late final Animation<Offset> offsetAnimation = Tween<Offset>(
          begin:  Offset.zero, end:  Offset.zero)
      .animate(CurvedAnimation(parent: controller, curve: Curves.elasticIn));

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
      child: SlideTransition(
        position: offsetAnimation,
        child:   Image.asset(
            CGangImages.logo,
          height: ScreenSize.height(context) * 0.32,
          width: ScreenSize.width(context) * 0.45,
        ),
      ),
    )));
  }
}
