import 'package:flutter/material.dart';
import 'package:hawaa_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:hawaa_app/shared/models/splash_view_body_model.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(
        progress: 2 / 3,
        nextRoute: '/thirdSplashView',
        model: SplashViewBodyModel(
          photo: 'assets/images/At anytime.png',
          largeText: 'أمانك وسهولة الاستخدام أولويتنا',
          smallText: 'تتبّع رحلاتك وطلباتك لحظة بلحظة، مع دعم فني متاح دائمًا',
        ),
      ),
    );
  }
}
