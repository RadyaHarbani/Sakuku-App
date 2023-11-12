import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

TextStyle titleCongratsPage = GoogleFonts.poppins(
    fontWeight: FontWeight.bold, fontSize: figmaFontsize(24));

textCongratsPage(bool white) {
  return GoogleFonts.poppins(
    color: white == true
        ? aboveBackgroundColor
        : textCongratsColor.withOpacity(0.59),
    letterSpacing: 1,
    fontSize: figmaFontsize(14),
    fontWeight: FontWeight.w600,
  );
}

TextStyle titleChipCongratsPage = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: figmaFontsize(48),
    color: aboveBackgroundColor);
