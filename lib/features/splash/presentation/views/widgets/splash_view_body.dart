import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 42,
              height: 23,
              margin: EdgeInsets.only(top: 61, left: 18),
              child: Text(
                'تخطي',
                style: Styles.textStyle16,
              ),
            ),
            Container(
              width: 361,
              height: 201,
              margin: const EdgeInsets.only(left: 16, top: 193),
              child: Image.asset(
                'assets/images/Frame 1.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
