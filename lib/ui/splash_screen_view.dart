import 'package:flutter/material.dart';
import 'package:shamo_provider/ui/login/login_view.dart';
import 'package:shamo_provider/utils/app_assets.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  static const routeName = '/splash-screen';

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => Navigator.pushReplacementNamed(context, LoginView.routeName),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppAssets.logo('logo_app.png'),
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
