import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalTextStyle {
  static TextStyle get robotoH4 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.25, height: 1.3),
      fontSize: 34,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoH5 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0, height: 1.3),
      fontSize: 24,
      decorationStyle: TextDecorationStyle.wavy,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoH6 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.15, height: 1.3),
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoS1 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.15, height: 1.3),
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoS2 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.1, height: 1.3),
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoB1 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.5, height: 1.5),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoB2 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.25, height: 1.5),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoB3 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.25, height: 1.5),
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoPhotoLabel {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.25, height: 1.5),
      fontSize: 12.1,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoButton {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 1.25, height: 1.5),
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoC1 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.4, height: 1.5),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoC2 {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.4, height: 1.5),
      fontSize: 12,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle get robotoOverline {
    return GoogleFonts.roboto(
      textStyle: const TextStyle(letterSpacing: 0.4, height: 1.3),
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }
}
