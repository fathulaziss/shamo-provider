import 'package:flutter/material.dart';
import 'package:shamo_provider/common/style.dart';
import 'package:shamo_provider/widgets/others/loading_indicator.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key? key,
    this.height = 42,
    this.width,
    this.radius = 8,
    this.textStyle,
    this.label,
    this.color = primaryColor,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.margin,
    this.isLoading = false,
    this.enabled = true,
    this.isOutline = false,
    this.outlineColor = primaryColor,
    this.textColor,
  }) : super(key: key);

  final double height;
  final double? width;
  final double radius;
  final TextStyle? textStyle;
  final String? label;
  final Color color;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function()? onTap;
  final EdgeInsets? margin;
  final bool enabled;
  final bool isLoading;
  final bool isOutline;
  final Color outlineColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container(
            decoration: isOutline
                ? BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: outlineColor),
                    shape: BoxShape.circle,
                  )
                : BoxDecoration(color: color, shape: BoxShape.circle),
            margin: margin ?? EdgeInsets.zero,
            padding: EdgeInsets.symmetric(vertical: isOutline ? 2 : 3),
            child: LoadingIndicator(
              color: isOutline ? outlineColor : Colors.white,
              size: height,
            ),
          )
        : Padding(
            padding: margin ?? EdgeInsets.zero,
            child: ElevatedButton(
              onPressed: enabled ? onTap ?? () {} : null,
              style: ButtonStyle(
                animationDuration: const Duration(milliseconds: 120),
                minimumSize: MaterialStateProperty.all(
                  Size(width ?? MediaQuery.of(context).size.width, height),
                ),
                backgroundColor: MaterialStateProperty.all(
                  enabled
                      ? isOutline
                          ? Colors.transparent
                          : color
                      : isOutline
                          ? Colors.transparent
                          : disabledColor,
                ),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                    side: isOutline
                        ? BorderSide(color: outlineColor)
                        : BorderSide.none,
                  ),
                ),
              ),
              child: prefixIcon != null && suffixIcon != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        prefixIcon ?? const SizedBox(),
                        Text(
                          label ?? 'Button',
                          style: appTextTheme.titleMedium!.copyWith(
                            color: enabled ? Colors.white : blackColor2,
                          ),
                        ),
                        suffixIcon ?? const SizedBox(),
                      ],
                    )
                  : prefixIcon != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            prefixIcon ?? const SizedBox(),
                            Text(
                              label ?? 'Button',
                              style: appTextTheme.titleMedium!.copyWith(
                                color: enabled ? Colors.white : blackColor2,
                              ),
                            ),
                          ],
                        )
                      : suffixIcon != null
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  label ?? 'Button',
                                  style: appTextTheme.titleMedium!.copyWith(
                                    color: enabled ? Colors.white : blackColor2,
                                  ),
                                ),
                                suffixIcon ?? const SizedBox(),
                              ],
                            )
                          : Text(
                              label ?? 'Button',
                              style: appTextTheme.titleMedium!.copyWith(
                                color: enabled ? Colors.white : blackColor2,
                              ),
                            ),
            ),
          );
  }
}
