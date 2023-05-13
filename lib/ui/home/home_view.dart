import 'package:flutter/material.dart';
import 'package:shamo_provider/widgets/pages/page_default.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefault(appBarTitle: 'Home', body: Column());
  }
}
