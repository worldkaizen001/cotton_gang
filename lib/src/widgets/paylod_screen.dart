


import 'package:cotton_gang/src/pages/homepage/homepage_page.dart';
import 'package:cotton_gang/src/widgets/drawer_component.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class PayloadScreen extends StatefulWidget {
  final String payload;
  const PayloadScreen({required this.payload, Key? key}) : super(key: key);

  @override
  State<PayloadScreen> createState() => _PayloadScreenState();
}

class _PayloadScreenState extends State<PayloadScreen> {
  final searchController = TextEditingController();
  dynamic boy;


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppBar(),
      endDrawer: const CustomEndDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Titles(
              title:widget.payload,
            ),
          ]
        ),
      ),
    );
  }
}
