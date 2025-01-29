import 'package:go_router/go_router.dart';
import 'package:hawaa_app/features/splash/presentation/views/splash_view_1.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView1(),
    ),
  ]);
}
