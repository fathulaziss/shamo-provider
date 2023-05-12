import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shamo_provider/common/style.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
    this.color,
    this.size,
  }) : super(key: key);

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          SpinKitFadingCircle(size: size ?? 32, color: color ?? primaryColor),
    );
  }
}

class LoadingIndicatorBounce extends StatelessWidget {
  const LoadingIndicatorBounce({
    Key? key,
    this.color,
    this.size,
  }) : super(key: key);

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitThreeBounce(
        size: size ?? 12,
        color: color ?? primaryColor,
      ),
    );
  }
}
