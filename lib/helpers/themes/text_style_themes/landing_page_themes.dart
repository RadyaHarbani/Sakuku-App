import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

//Landing Page View
TextStyle titleLandingPage = GoogleFonts.poppins(
  fontSize: figmaFontsize(20),
  fontWeight: FontWeight.bold,
  color: primaryTextColorBlack,
);

//Button Landing Component
textButtonLandingComponent(bool isBorder, Color buttonColor) {
  return
  GoogleFonts.poppins(
    fontSize: figmaFontsize(17),
    fontWeight: FontWeight.bold,
    color: isBorder == true ? buttonColor : Colors.white,
  );
}
