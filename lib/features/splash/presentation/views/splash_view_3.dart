import 'package:flutter/material.dart';
import 'package:hawaa_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:hawaa_app/shared/models/splash_view_body_model.dart';

class SplashView3 extends StatelessWidget {
  const SplashView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(
        progress: 1.0,
        nextRoute: '/LocationPermissionView',
        model: SplashViewBodyModel(
          photo: 'assets/images/Anywhere you are.png',
          largeText: 'جاهز تبدأ؟',
          smallText: 'تابع كل شيء مباشرة من التطبيق',
        ),
      ),
    );
  }
}
