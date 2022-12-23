import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../pages/homepage/homepage_page.dart';
import '../pages/select_preference/select_preference.dart';

class BottomNavigation extends HookWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    final children = [
      HomepageScreen(),
      SelectPreferenceScreen(),
      SelectPreferenceScreen(),
      SelectPreferenceScreen(),
    ];
    return Scaffold(
      body: children[currentIndex.value],
      bottomNavigationBar: SizedBox(
        height: 60,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20) ),
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
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
