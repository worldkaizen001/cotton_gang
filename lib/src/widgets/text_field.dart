import 'package:flutter/material.dart';

class CGangTextField extends StatelessWidget {
  final String? hintText;
  final BoxConstraints? constraints;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final TextInputType? textInputType;
  final double? width, height;
  final Color? color, cursorColor, prefixIconColor, suffixIconColor;
  final IconData? suffixIcon, prefixIcon;
  final bool? obscure;
  final Function? suffixIconFunction, prefixIconFunction;
  final Widget? prefixWidget, suffixWidget;
  final TextStyle? hintTextStyle;

  const CGangTextField(
      {this.hintTextStyle,
      this.suffixIcon,
      this.prefixIcon,
      this.prefixIconFunction,
      this.suffixWidget,
      this.height,
      this.prefixWidget,
      this.obscure,
      this.width,
      this.cursorColor,
      this.suffixIconFunction,
      this.color,
      this.onChanged,
      this.textInputType,
      this.validator,
      this.hintText,
      this.constraints,
      this.controller,
      Key? key,
      this.prefixIconColor,
      this.suffixIconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height!,
      width: MediaQuery.of(context).size.width * width!,
      child: TextFormField(
        obscureText: obscure?? false,
        cursorColor: cursorColor,
        onChanged: onChanged,
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  suffixIconFunction!();
                },
                icon: Icon(
                  suffixIcon,
                  color: suffixIconColor,
                  size: 21,
                )),
            filled: true,
            fillColor: const Color(0xffffffff),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                    color: Color(0xff696464),
                    width: 1,
                    style: BorderStyle.solid)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                    color: Color(0xffE1DBDB),
                    width: 1,
                    style: BorderStyle.solid)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                    color: Colors.red, width: 1, style: BorderStyle.solid)),
            hintText: hintText,
            hintStyle: hintTextStyle),
        validator: validator,
      ),
    );
  }
}
