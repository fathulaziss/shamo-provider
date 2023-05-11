import 'package:flutter/material.dart';
import 'package:shamo_provider/common/navigation.dart';
import 'package:shamo_provider/common/style.dart';
import 'package:shamo_provider/ui/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      theme: appTheme,
      initialRoute: SplashScreenView.routeName,
      routes: {
        SplashScreenView.routeName: (context) => const SplashScreenView(),
      },
    );
  }
}
