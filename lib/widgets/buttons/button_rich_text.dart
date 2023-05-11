import 'package:flutter/material.dart';
import 'package:shamo_provider/common/style.dart';

class ButtonRichText extends StatelessWidget {
  const ButtonRichText({
    required this.label1,
    required this.label2,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String label1;
  final String label2;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      child: RichText(
        text: TextSpan(
          text: label1,
          style: appTextTheme.bodySmall!.copyWith(color: blackColor2),
          children: <TextSpan>[
            TextSpan(
              text: label2,
              style: appTextTheme.bodySmall!
                  .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
