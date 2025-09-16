import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static const double small = 10;
  static const double medium = 12;
  static const double regular = 14;
  static const double large = 16;
  static const double xLarge = 18;
  static const double xxLarge = 20;
  static const double title = 22;
  static const double header = 24;

  static Widget text10Regular({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: small),
      ),
    );
  }

  static Widget text10Medium({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: small),
      ),
    );
  }

  static Widget text12Regular({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: medium),
      ),
    );
  }

  static Widget text12Medium({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: medium),
      ),
    );
  }

  static Widget text14Regular({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: regular),
      ),
    );
  }

  static Widget text14Medium({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: regular),
      ),
    );
  }

  static Widget text16Regular({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: large),
      ),
    );
  }

  static Widget text16Medium({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: large),
      ),
    );
  }

  static Widget text18Regular({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: xLarge),
      ),
    );
  }

  static Widget text18Medium({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: xLarge),
      ),
    );
  }

  static Widget text20Regular({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: xxLarge),
      ),
    );
  }

  static Widget text20Medium({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: xxLarge),
      ),
    );
  }

  static Widget text22Medium({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: title),
      ),
    );
  }

  static Widget text22Regular({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: title),
      ),
    );
  }

  static Widget text24Regular({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: header),
      ),
    );
  }

  static Widget text24Medium({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: header),
      ),
    );
  }

  static Widget decorateText(
      {required double fontSize,
      required String text,
      required Color color,
      required FontWeight fontWeight,
      required FontStyle fontStyle,
      required TextDecoration decoration}) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            fontSize: fontSize,
            decoration: decoration,
            decorationColor: color,
            decorationThickness: 2),
      ),
    );
  }
}
