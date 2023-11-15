import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

TextStyle titleAllTargetPage = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: figmaFontsize(21),
    color: aboveBackgroundColor);

TextStyle textAllTargetPage = GoogleFonts.poppins(
    fontWeight: FontWeight.bold, fontSize: figmaFontsize(12));

TextStyle nameAllTargetPage = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(14),
);

TextStyle achievementAllTarget = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: figmaFontsize(12),
    color: textAllTargetColor);

TextStyle collectedAllTargetPage = GoogleFonts.poppins(
    fontWeight: FontWeight.w500, fontSize: figmaFontsize(12));

TextStyle addAllTargetPage = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: figmaFontsize(17),
    fontWeight: FontWeight.w600);
