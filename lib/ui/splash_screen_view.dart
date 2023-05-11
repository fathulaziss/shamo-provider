import 'package:flutter/material.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  static const routeName = '/splash-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Image.asset('assets/logos/logo_app.png', width: 150, height: 150),
      ),
    );
  }
}
