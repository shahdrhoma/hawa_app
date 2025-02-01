import 'package:go_router/go_router.dart';
import 'package:hawaa_app/features/splash/presentation/views/splash_view_1.dart';
import 'package:hawaa_app/features/splash/presentation/views/splash_view_2.dart';
import 'package:hawaa_app/features/splash/presentation/views/splash_view_3.dart';

abstract class AppRouter {
  static const kSecondSplash = '/secondSplashView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView1(),
    ),
    GoRoute(
      path: '/secondSplashView',
      builder: (context, state) => const SplashView2(),
    ),
    GoRoute(
      path: '/thirdSplashView',
      builder: (context, state) => const SplashView3(),
    ),
  ]);
}
