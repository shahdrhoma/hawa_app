import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onPressed : null,
      child: Container(
        alignment: Alignment.center,
        width: 228,
        height: 53,
        decoration: BoxDecoration(
          color: isActive ? const Color(0xff4DA1DD) : Colors.transparent,
          border: Border.all(
            color: isActive ? const Color(0xff4DA1DD) : const Color(0xff4DA1DD),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 16,
            color: isActive ? Colors.white : const Color(0xff4DA1DD),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
