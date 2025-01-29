import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/app_router.dart';

void main() {
  runApp(const HawaApp());
}

class HawaApp extends StatelessWidget {
  const HawaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
