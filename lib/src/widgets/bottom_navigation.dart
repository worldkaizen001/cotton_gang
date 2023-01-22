import 'package:cotton_gang/src/pages/homepage/homepage_page.dart';
import 'package:cotton_gang/src/pages/post_item/post_item_page.dart';
import 'package:cotton_gang/src/pages/saved_screen/saved_screen_page.dart';
import 'package:cotton_gang/src/pages/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../pages/forget_password/forget_password_page.dart';
import '../pages/login/login_page.dart';
import '../pages/register/register_page.dart';
import '../pages/select_language/select_language_page.dart';

class BottomNavigation extends HookWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    final children = [
      const HomepageScreen(),
      const SearchScreen(),
      // RegisterScreen(),
      const SavedScreen(),
     // LoginScreen(),
      // CreateNewPassword(),
      PostItemScreen()


      // const ProfileScreen(),
    ];
    return Scaffold(
      body: children[currentIndex.value],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          backgroundColor: const Color(0xff181818),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff39FF14),
          unselectedItemColor: const Color(0xff777777),
          unselectedLabelStyle: GoogleFonts.prompt(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xff777777),
          ),
          selectedLabelStyle: GoogleFonts.prompt(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xff39FF14),
          ),
          currentIndex: currentIndex.value,
          onTap: (index) {
            currentIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.home,
                size: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.search_normal,
                size: 20,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.heart,
                size: 20,
              ),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.personalcard),
              label: 'Post',
            ),
          ],
        ),
      ),
    );
  }
}
