import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

//On Boarding Page View
TextStyle buttonTextOnboarding = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(17),
  fontWeight: FontWeight.w600,
);

//On Boarding Content Component
TextStyle titleOnboardingContent = GoogleFonts.poppins(
  height: 1.3,
  fontSize: figmaFontsize(22),
  fontWeight: FontWeight.bold,
);

TextStyle descOnboardingContent = GoogleFonts.poppins(
  fontSize: figmaFontsize(13),
  color: primaryTextColorGrey,
);
