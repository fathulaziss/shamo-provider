import 'package:flutter/material.dart';
import 'package:shamo_provider/widgets/pages/page_default.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefault(appBarTitle: 'Profile', body: Column());
  }
}
