import 'package:go_router/go_router.dart';
import 'package:hawaa_app/features/home/presentation/views/customer_login_or_signup_view.dart';
import 'package:hawaa_app/features/home/presentation/views/driver_or_customer_view.dart';
import 'package:hawaa_app/features/splash/presentation/views/splash_view_1.dart';
import 'package:hawaa_app/features/splash/presentation/views/splash_view_2.dart';
import 'package:hawaa_app/features/splash/presentation/views/splash_view_3.dart';

abstract class AppRouter {
  static const kSecondSplash = '/secondSplashView';
  static const kThirdSplash = '/thirdSplashView';
  static const kDriverOrCustomerView = '/driverOrCustomerView';
  static const kCustomerLoginOrSignupView = '/customerLoginOrSignupView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView1(),
    ),
    GoRoute(
      path: kSecondSplash,
      builder: (context, state) => const SplashView2(),
    ),
    GoRoute(
      path: kThirdSplash,
      builder: (context, state) => const SplashView3(),
    ),
    GoRoute(
      path: kDriverOrCustomerView,
      builder: (context, state) => const DriverOrCustomerView(),
    ),
    GoRoute(
      path: kCustomerLoginOrSignupView,
      builder: (context, state) => const CustomerLoginOrSignupView(),
      ),
  ],
  );
}
