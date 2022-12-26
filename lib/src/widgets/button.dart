import 'package:flutter/material.dart';

import 'package:cotton_gang/src/helpers/screen_size.dart';

class CGangButton extends StatelessWidget {
  final String title;
  final double buttonHeight;
  final double buttonWidth;
  final double? borderRadius;
  final Color buttonColor;
  final Function callBack;
  final Color? borderColor;
  final TextStyle? textStyle;

  const CGangButton({
    this.textStyle,
    this.borderColor,
    required this.title,
    required this.buttonHeight,
    required this.buttonWidth,
    this.borderRadius,
    required this.buttonColor,
    required this.callBack,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height(context) * buttonHeight,
      width: ScreenSize.width(context) * buttonWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius??0),
            ),
            elevation: 0,
            side: BorderSide(color: borderColor?? Colors.transparent, width: 1),
            backgroundColor: buttonColor),
        onPressed: () {
          callBack();
        },
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
