import 'package:flutter/material.dart';
import 'package:shamo_provider/common/style.dart';

class PageDefault extends StatelessWidget {
  const PageDefault({
    Key? key,
    required this.appBarTitle,
    required this.body,
    this.appBarSubtitle,
    this.persistentFooterAlignment = AlignmentDirectional.center,
    this.persistentFooterButtons,
    this.isScrollable = false,
  }) : super(key: key);

  final String appBarTitle;
  final String? appBarSubtitle;
  final Widget body;
  final AlignmentDirectional persistentFooterAlignment;
  final List<Widget>? persistentFooterButtons;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(appBarTitle, style: appTextTheme.titleLarge),
            if (appBarSubtitle != null)
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  appBarSubtitle ?? '',
                  style: appTextTheme.bodyMedium!.copyWith(color: blackColor2),
                ),
              ),
          ],
        ),
        toolbarHeight: 70,
      ),
      persistentFooterAlignment: persistentFooterAlignment,
      persistentFooterButtons: persistentFooterButtons,
      body: isScrollable ? SingleChildScrollView(child: body) : body,
    );
  }
}
