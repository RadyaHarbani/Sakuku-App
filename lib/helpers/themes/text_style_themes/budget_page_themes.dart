import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

TextStyle appbarTextBudgetPage = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(17),
  fontWeight: FontWeight.w600,
);

TextStyle textBudgetPage = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: figmaFontsize(14),
    color: textBudgetColor);

TextStyle editChipBudgetPage = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: figmaFontsize(14),
    color: aboveBackgroundColor);

moneyBudgetPage(bool white, bool weight) {
  return GoogleFonts.poppins(
    color: white == false
        ? aboveBackgroundColor
        : aboveBackgroundColor.withOpacity(0.40),
    fontWeight: weight == false ? FontWeight.w500 : FontWeight.bold,
    fontSize: weight == false ? figmaFontsize(15) : figmaFontsize(30),
  );
}

TextStyle useBudgetPage = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: figmaFontsize(13),
    color: textBudgetColor);

TextStyle kategoriChipBudgetPage = GoogleFonts.poppins(
    fontWeight: FontWeight.bold, fontSize: figmaFontsize(19));

TextStyle plusBudgetPage = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: figmaFontsize(15),
    color: fourthColor);
