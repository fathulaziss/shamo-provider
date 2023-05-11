import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum TextFieldState { focus, error, disabled, none }

enum InputStyle { box, line, outline }

const Color primaryColor = Color(0xFF6C5ECF);
const Color secondaryColor = Color(0xFF38ABBE);
const Color backgroundColor = Color(0xFF1F1D2B);
const Color whiteColor = Color(0xFFF1F0F2);
const Color blueColor = Color(0xFF2C96F1);
const Color blackColor1 = Color(0xFF2B2937);
const Color redColor = Color(0xFFED6363);
const Color disabledColor = Color(0xFF808191);
const Color blackColor2 = Color(0xFF504F5E);

const Map<int, Color> swatchColor = {
  50: Color(0xffaea6e5),
  100: Color(0xffa79ee2),
  200: Color(0xff988edd),
  300: Color(0xff897ed9),
  400: Color(0xff7b6ed4),
  500: Color(0xff6c5ecf),
  600: Color(0xff6155ba),
  700: Color(0xff564ba6),
  800: Color(0xff4c4291),
  900: Color(0xff41387c)
};

final TextTheme appTextTheme = TextTheme(
  titleLarge: GoogleFonts.poppins(
    color: whiteColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.05,
  ),
  titleMedium: GoogleFonts.poppins(
    color: whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.01,
  ),
  titleSmall: GoogleFonts.poppins(
    color: blackColor2,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.05,
  ),
  bodyMedium: GoogleFonts.poppins(
    color: whiteColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.05,
  ),
  bodySmall: GoogleFonts.poppins(
    color: whiteColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.05,
  ),
);

final ThemeData appTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: false,
  ),
  disabledColor: disabledColor,
  primaryColor: primaryColor,
  primarySwatch: const MaterialColor(0xFF6C5ECF, swatchColor),
  scaffoldBackgroundColor: backgroundColor,
  textTheme: appTextTheme,
);

InputDecoration inputDecoration({
  required String hintText,
  Widget? prefixIcon,
  Widget? suffixIcon,
  TextStyle? hintStyle,
  EdgeInsets? padding,
  Color? hintColor,
}) {
  return InputDecoration(
    isDense: true,
    // filled: true,
    contentPadding:
        padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    hintText: hintText,
    border: InputBorder.none,
    errorMaxLines: 5,
    prefixIcon: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: prefixIcon,
    ),
    prefixIconConstraints: const BoxConstraints(minHeight: 24, minWidth: 24),
    suffixIconConstraints: const BoxConstraints(minHeight: 24, minWidth: 24),
    suffixIcon: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: suffixIcon,
    ),
    hintStyle: hintStyle ??
        appTextTheme.bodyMedium!.copyWith(color: hintColor ?? blackColor2),
  );
}
