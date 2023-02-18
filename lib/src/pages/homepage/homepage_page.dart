import 'dart:convert';
import 'dart:ui';

import 'package:cotton_gang/src/helpers/custome_sizedbox.dart';
import 'package:cotton_gang/src/helpers/images.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/api_methods.dart';
import '../../models/product.dart';
import '../../models/real_product.dart';
import '../../providers/saved_item.dart';
import '../../providers/saved_item_state_notifer.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/drawer_component.dart';
import '../product_details/product_details_page.dart';
import '../profile/profile_page.dart';
import 'package:http/http.dart' as http;

part 'screens/homepage.dart';
part 'widget/product_card.dart';
part 'widget/titles.dart';
part 'widget/titles_and_description.dart';
part 'widget/real_product_card.dart';
