import 'package:flutter/material.dart';
import 'package:shamo_provider/common/navigation.dart';
import 'package:shamo_provider/common/style.dart';
import 'package:shamo_provider/ui/login/login_view.dart';
import 'package:shamo_provider/ui/splash_screen_view.dart';
import 'package:shamo_provider/utils/app_utils.dart';

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
      builder: (context, child) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: AppUtils.dismissKeyboard,
          child: child,
        );
      },
      routes: {
        SplashScreenView.routeName: (context) => const SplashScreenView(),
        LoginView.routeName: (context) => const LoginView(),
      },
    );
  }
}
