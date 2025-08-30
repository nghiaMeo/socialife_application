import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static const double _fontSmall = 12;
  static const double _fontMedium = 16;
  static const double _fontLarge = 18;
  static const double _fontHeader = 20;

  static Widget headerTitleRegular({
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
          fontSize: _fontHeader
        ),
      ),
    );
  }
  static Widget textRegularMedium({
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
            fontSize: _fontMedium
        ),
      ),
    );
  }
}
