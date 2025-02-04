import 'package:flutter/material.dart';

class CustomTextFieldWithDivider extends StatelessWidget {
  const CustomTextFieldWithDivider(
      {super.key,
      required this.hintText,
      this.obscureText = false,
      this.prefixIcon,
      this.suffixIcon});

  final String hintText;
  final bool obscureText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:const TextInputType.numberWithOptions(),
      style:const TextStyle(
        color:  Color(0xff49AAEF)
      ),
      cursorColor: const Color(0xff49AAEF),
      obscureText: obscureText,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffA6A6A6),
        ),
        suffixIcon: suffixIcon != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 19), 
                  Container(
                    height: 44, 
                    width: 1, 
                    color:const Color(0xffDDDDDD), 
                  ),
                  const SizedBox(width: 10),
                  suffixIcon!, 
                  const SizedBox(width: 7),
                  Padding(
                    padding: const EdgeInsets.only(right: 21),
                    child: Image.asset(
                      'assets/images/24.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              )
            : null,
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.only(top: 20, bottom: 20 ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0xffCCCCCC)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Color(0xff49AAEF)),
        ),
      ),
    );
  }
}
