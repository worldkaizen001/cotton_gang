part of 'package:cotton_gang/src/pages/register/register_page.dart';


class TextFieldAndTitle extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final Color? color, suffixIconColor;
  final IconData? suffixIcon;
  final bool? obscure;
  final Function? suffixIconFunction, prefixIconFunction;
  final Widget? prefixWidget, suffixWidget;
  final TextStyle? hintTextStyle;

  const TextFieldAndTitle(
      {this.color,
        this.suffixIconColor,
        this.obscure,
        required this.title,
        Key? key,
        this.controller,
        this.validator,
        this.onChanged,
        this.suffixIcon,
        this.suffixIconFunction,
        this.prefixIconFunction,
        this.prefixWidget,
        this.suffixWidget,
        this.hintTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.prompt(
            textStyle: const TextStyle(
              color: Color(0xff5E6368),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CustomSizedBox.verticalSpace(5),
        CGangTextField(
          obscure: obscure,
          cursorColor: const Color(0xff181818),
          controller: controller,
          validator: validator,
          onChanged: onChanged,
          height: 0.060,
          width: 1,
          color: const Color(0xffE1DBDB),
          suffixIconColor: suffixIconColor,
          suffixIconFunction: () {
            suffixIconFunction!();
          },
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }
}
