import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/styles.dart';

class LocationCard extends StatelessWidget {
  final VoidCallback onLocationPressed;

  const LocationCard({super.key, required this.onLocationPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 394,
      width: 340,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Location Icon
          const SizedBox(height: 20),
          Image.asset('assets/images/Location.png'),

          const SizedBox(height: 20),

          // Title
          const Text(
            "قم بتفعيل الموقع الخاص بك",
            style: Styles.textStyle20700,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 10),

          // Subtitle
          const Text(
            "اختر موقعك لبدء العثور على الطلبات من حولك",
            style: Styles.textStyle14,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 50),

          // Button
          SizedBox(
            height: 53,
            width: 228,
            child: ElevatedButton(
              onPressed: onLocationPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff4DA1DD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
              ),
              child: const Text(
                "استخدام موقعي",
                style: Styles.textStyle16500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
