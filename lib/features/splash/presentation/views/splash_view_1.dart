import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:hawaa_app/shared/models/body_model.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(
        progress: 1 / 3,
        nextRoute: AppRouter.kSecondSplash,
        model: BodyModel(
          photo: 'assets/images/Frame 1.png',
          largeText: 'خدماتنا في متناول يدك',
          smallText: 'احجز رحلتك بسهولة ,وصّل طلباتك بسرعة وأمان',
        ),
      ),
    );
  }
}
