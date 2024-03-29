import 'dart:convert';

import 'package:cotton_gang/src/helpers/custome_sizedbox.dart';
import 'package:cotton_gang/src/helpers/images.dart';
import 'package:cotton_gang/src/helpers/screen_size.dart';
import 'package:cotton_gang/src/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/image_picker.dart';
import '../../models/real_product.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/drawer_component.dart';
import '../product_details/product_details_page.dart';
import '../register/register_page.dart';
import 'package:http/http.dart' as http;


part 'screens/post_item_screen.dart';