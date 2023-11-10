import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

//Login Page View
TextStyle titleLoginRegisterPage = GoogleFonts.poppins(
  fontSize: figmaFontsize(24),
  fontWeight: FontWeight.bold,
  color: primaryTextColorBlack,
);

TextStyle subtitleLoginRegisterPage = GoogleFonts.poppins(
  fontSize: figmaFontsize(14),
  height: 1.2,
);

TextStyle buttonLoginRegister = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(16),
  fontWeight: FontWeight.w600,
);

TextStyle textAlreadyUser = GoogleFonts.poppins(
  color: primaryTextColorBlack,
);

TextStyle textSignInUp = GoogleFonts.poppins(
  color: primaryTextColorBlack,
  fontWeight: FontWeight.w600,
);

//Or Widget Component
TextStyle orWidgetStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  color: primaryTextColorBlack,
);

//Button Login Register Component
isLoadingButtonText(bool isColor) {
  return GoogleFonts.poppins(
    color: isColor == true ? primaryTextColorWhite : primaryColor,
    fontSize: figmaFontsize(17),
    fontWeight: FontWeight.w500,
  );
}
