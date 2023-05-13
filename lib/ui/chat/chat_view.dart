import 'package:flutter/material.dart';
import 'package:shamo_provider/widgets/pages/page_default.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefault(appBarTitle: 'Chat', body: Column());
  }
}
