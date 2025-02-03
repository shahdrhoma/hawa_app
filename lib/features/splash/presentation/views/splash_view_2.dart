import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(
        progress: 2 / 3,
        nextRoute: AppRouter.kThirdSplash,
        model: SplashViewBodyModel(
          photo: 'assets/images/At anytime.png',
          largeText: 'أمانك وسهولة الاستخدام أولويتنا',
          smallText: 'تتبّع رحلاتك وطلباتك لحظة بلحظة، مع دعم فني متاح دائمًا',
        ),
      ),
    );
  }
}
