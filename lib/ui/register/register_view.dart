import 'package:flutter/material.dart';
import 'package:shamo_provider/common/style.dart';
import 'package:shamo_provider/widgets/buttons/button_primary.dart';
import 'package:shamo_provider/widgets/buttons/button_rich_text.dart';
import 'package:shamo_provider/widgets/inputs/input_email.dart';
import 'package:shamo_provider/widgets/inputs/input_password.dart';
import 'package:shamo_provider/widgets/inputs/input_primary.dart';
import 'package:shamo_provider/widgets/pages/page_default.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  static const routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return PageDefault(
      appBarTitle: 'Sign Up',
      appBarSubtitle: 'Register and Happy Shoping',
      toolbarHeight: 70,
      button: Container(
        color: backgroundColor,
        margin: const EdgeInsets.only(bottom: 16),
        child: ButtonPrimary(
          label: 'Sign Up',
          margin: const EdgeInsets.symmetric(horizontal: 16),
          onTap: () {},
        ),
      ),
      persistentFooterButtons: [
        Center(
          child: ButtonRichText(
            label1: 'Already have an account?',
            label2: ' Sign In',
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ],
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputPrimary(
                label: 'Full Name',
                hint: 'Your Full Name',
                prefixIcon: Image.asset(
                  'assets/icons/icon_profile.png',
                  width: 16,
                  color: primaryColor,
                ),
                validation: (value) => value.isNotEmpty,
                onChanged: (value) {},
              ),
              InputPrimary(
                label: 'Username',
                hint: 'Your Username',
                prefixIcon: Image.asset(
                  'assets/icons/icon_username.png',
                  width: 16,
                  color: primaryColor,
                ),
                validation: (value) => value.isNotEmpty,
                onChanged: (value) {},
              ),
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
