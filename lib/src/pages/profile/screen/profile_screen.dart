part of 'package:cotton_gang/src/pages/profile/profile_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomEndDrawer(),
      body: Column(
        children: const [],
      ),
    );
  }
}

class DrawerObjects extends StatelessWidget {
  final Function callBack;
  final IconData icon;
  final String title;

  const DrawerObjects(
      {required this.title,
      required this.icon,
      required this.callBack,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            callBack();
          },
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: const Color(0xff181818),
              ),
              CustomSizedBox.horizontalSpace(10),
              Text(
                title,
                style: GoogleFonts.prompt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff181818),
                ),
              )
            ],
          ),
        ),
        CustomSizedBox.verticalSpace(50),
      ],
    );
  }
}

class CustomEndDrawer extends StatelessWidget {
  const CustomEndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10,),
      child: Drawer(
        elevation: 5,
        width: 265,
        backgroundColor: const Color(0xffF9F9F9),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60), bottomLeft: Radius.circular(60))),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CloseButton(
                    color: const Color(0xff697367),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Image.asset(
                    CGangImages.logo,
                    height: 30,
                    width: 30,
                  )
                ],
              ),
              CustomSizedBox.verticalSpace(50),
              DrawerObjects(
                callBack: () {},
                title: 'Notification',
                icon: Iconsax.notification,
              ),
              DrawerObjects(
                callBack: () {},
                title: 'Whatsapp Link',
                icon: Iconsax.text,
              ),
              DrawerObjects(
                callBack: () {},
                title: 'Term & Condition',
                icon: Iconsax.book,
              ),
              DrawerObjects(
                callBack: () {},
                title: 'Support',
                icon: Iconsax.message,
              ),
              DrawerObjects(
                callBack: () {},
                title: 'FAQ',
                icon: Iconsax.menu,
              ),
              CustomSizedBox.verticalSpace(150),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    const Icon(
                      Iconsax.logout,
                      size: 20,
                      color: Color(0xff1D8909),
                    ),
                    CustomSizedBox.horizontalSpace(10),
                    Text(
                      'Log_out',
                      style: GoogleFonts.prompt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff1D8909),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
