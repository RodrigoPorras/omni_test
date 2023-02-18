import 'package:flutter/material.dart';
import 'package:flutter_omni_test/colors/o_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class RTextStyles {
  static const double defaultFontSize = 14;

  static TextStyle base() => GoogleFonts.openSans(
        fontSize: defaultFontSize,
        fontWeight: FontWeight.normal,
        color: OColors.primaryLightColor,
      );

  static TextStyle regular() => base().copyWith(fontWeight: FontWeight.w400);

  static TextStyle medium() => base().copyWith(fontWeight: FontWeight.w500);

  static TextStyle semibold() => base().copyWith(fontWeight: FontWeight.w600);

  static TextStyle bold() => base().copyWith(fontWeight: FontWeight.bold);
}
