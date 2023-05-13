import 'package:flutter/material.dart';
import 'package:shamo_provider/common/style.dart';

class PageDefault extends StatelessWidget {
  const PageDefault({
    Key? key,
    required this.appBarTitle,
    required this.body,
    this.button,
    this.appBarSubtitle,
    this.centerTitle,
    this.automaticallyImplyLeading = false,
    this.toolbarHeight = kToolbarHeight,
    this.persistentFooterAlignment = AlignmentDirectional.center,
    this.persistentFooterButtons,
    this.isScrollable = false,
    this.isShowBackButton = false,
  }) : super(key: key);

  final String appBarTitle;
  final String? appBarSubtitle;
  final bool? centerTitle;
  final bool automaticallyImplyLeading;
  final double toolbarHeight;
  final Widget? button;
  final Widget body;
  final AlignmentDirectional persistentFooterAlignment;
  final List<Widget>? persistentFooterButtons;
  final bool isScrollable;
  final bool isShowBackButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarSubtitle != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(appBarTitle, style: appTextTheme.titleLarge),
                  const SizedBox(height: 2),
                  Text(
                    appBarSubtitle ?? '',
                    style:
                        appTextTheme.bodyMedium!.copyWith(color: blackColor2),
                  ),
                ],
              )
            : Text(appBarTitle, style: appTextTheme.titleLarge),
        centerTitle: centerTitle,
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: isShowBackButton
            ? IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new),
              )
            : null,
        toolbarHeight: toolbarHeight,
      ),
      persistentFooterAlignment: persistentFooterAlignment,
      persistentFooterButtons: persistentFooterButtons,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: button,
      body: isScrollable ? SingleChildScrollView(child: body) : body,
    );
  }
}
