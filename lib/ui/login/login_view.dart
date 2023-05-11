import 'package:flutter/material.dart';
import 'package:shamo_provider/common/style.dart';
import 'package:shamo_provider/widgets/buttons/button_rich_text.dart';
import 'package:shamo_provider/widgets/inputs/input_email.dart';
import 'package:shamo_provider/widgets/inputs/input_password.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login', style: appTextTheme.titleLarge),
            const SizedBox(height: 2),
            Text(
              'Sign In to Countinue',
              style: appTextTheme.bodyMedium!.copyWith(color: blackColor2),
            ),
          ],
        ),
        toolbarHeight: 70,
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        ButtonRichText(
          label1: "Don't have an account?",
          label2: ' Sign Up',
          onPressed: () {},
        )
      ],
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputEmail(
                label: 'Email Address',
                hint: 'Your Email Address',
                validation: (value) => value.isNotEmpty,
                value: (value) {},
              ),
              InputPassword(
                label: 'Password',
                hint: 'Your Password',
                value: (value) {},
              ),
              SizedBox(height: MediaQuery.of(context).viewInsets.bottom / 6)
            ],
          ),
        ),
      ),
    );
  }
}
