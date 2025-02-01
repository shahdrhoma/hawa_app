import 'package:flutter/material.dart';
import 'package:hawaa_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(
        progress: 1 / 3,
        nextRoute: '/secondSplashView',
        model: SplashViewBodyModel(
          photo: 'assets/images/Frame 1.png',
          largeText: 'خدماتنا في متناول يدك',
          smallText: 'احجز رحلتك بسهولة ,وصّل طلباتك بسرعة وأمان',
        ),
      ),
    );
  }
}
