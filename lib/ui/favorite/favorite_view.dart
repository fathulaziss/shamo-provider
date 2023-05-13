import 'package:flutter/material.dart';
import 'package:shamo_provider/widgets/pages/page_default.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefault(appBarTitle: 'Favorite', body: Column());
  }
}
