import 'package:flutter/material.dart';
import 'package:shamo_provider/ui/main_view.dart';
import 'package:shamo_provider/ui/register/register_view.dart';
import 'package:shamo_provider/widgets/buttons/button_primary.dart';
import 'package:shamo_provider/widgets/buttons/button_rich_text.dart';
import 'package:shamo_provider/widgets/inputs/input_email.dart';
import 'package:shamo_provider/widgets/inputs/input_password.dart';
import 'package:shamo_provider/widgets/pages/page_default.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return PageDefault(
      appBarTitle: 'Login',
      appBarSubtitle: 'Sign In to Countinue',
      toolbarHeight: 70,
      persistentFooterButtons: [
        ButtonRichText(
          label1: "Don't have an account?",
          label2: ' Sign Up',
          onPressed: () => Navigator.pushNamed(context, RegisterView.routeName),
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
              ButtonPrimary(
                label: 'Sign In',
                margin: const EdgeInsets.only(top: 10),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, MainView.routeName),
              ),
              SizedBox(height: MediaQuery.of(context).viewInsets.bottom / 6)
            ],
          ),
        ),
      ),
    );
  }
}
