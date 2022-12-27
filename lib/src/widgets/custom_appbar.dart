

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../helpers/images.dart';

AppBar customAppBar() {
  return AppBar(
    elevation: 0.3,
    automaticallyImplyLeading: false,
    backgroundColor: const Color(0xffF9F9F9),
    toolbarHeight: 80,
    leadingWidth: 60,
    leading: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Image.asset(
        CGangImages.logo,
      ),
    ),
    actions: [
      Builder(
        builder: (context) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: IconButton(
            icon: const Icon(
              Iconsax.menu,
              size: 25,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        ),
      ),
    ],
  );
}