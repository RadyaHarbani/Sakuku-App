import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

TextStyle bulanChipHomepage = GoogleFonts.poppins(
  color: primaryTextColorBlack,
  fontSize: figmaFontsize(13),
  fontWeight: FontWeight.w600,
);

TextStyle goodChipHomepage = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(13),
  fontWeight: FontWeight.w600,
);

keuanganHomePage(bool green) {
  return GoogleFonts.poppins(
    color: green == true ? secondaryColor : filledTextfieldColor,
    letterSpacing: 1,
    fontSize: figmaFontsize(11),
    fontWeight: FontWeight.w600,
  );
}

rpHomePage(bool weight, bool height) {
  return GoogleFonts.poppins(
    fontWeight: weight ? FontWeight.bold : FontWeight.w600,
    height: height == true ? 4 : 2,
    fontSize: figmaFontsize(11),
    color: filledTextfieldColor.withOpacity(.7),
  );
}

moneyHomePage(bool size) {
  return GoogleFonts.poppins(
    fontSize: size == true ? figmaFontsize(30) : figmaFontsize(16),
    color: primaryTextColorWhite,
    fontWeight: FontWeight.bold,
  );
}

containerTittleHomePage(bool height) {
  return GoogleFonts.poppins(
    height: height == true ? 1.2 : 0,
    color: primaryTextColorBlack,
    fontSize: figmaFontsize(18),
    fontWeight: FontWeight.bold,
  );
}

TextStyle containerDateHomePage = GoogleFonts.poppins(
  color: primaryTextColorGrey.withOpacity(0.6),
  fontSize: figmaFontsize(14),
  fontWeight: FontWeight.w600,
);

TextStyle BudgetHomePage = GoogleFonts.poppins(
  fontSize: figmaFontsize(15),
  fontWeight: FontWeight.w600,
);

TextStyle chipHomePage = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  fontSize: figmaFontsize(13),
  color: primaryTextColorBlack.withOpacity(0.58),
);

moneyRemainderHomePage(bool red) {
  return GoogleFonts.poppins(
    color: red == true ? warningColor : successColor,
    fontSize: figmaFontsize(13),
    fontWeight: FontWeight.w600,
  );
}

TextStyle moneyUsedHomePage = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: figmaFontsize(14),
);

TextStyle paydayHomePage = GoogleFonts.poppins(
  fontSize: figmaFontsize(13),
  height: 1.3,
  fontWeight: FontWeight.w500,
);

TextStyle fiturHomePage = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontWeight: FontWeight.w600,
  height: 1.3,
  fontSize: figmaFontsize(10),
);

TextStyle hebatHomePage = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: figmaFontsize(17),
  color: primaryTextColorWhite,
);

TextStyle hebatChipHomePage = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  height: 1.3,
  fontSize: figmaFontsize(14),
  color: primaryTextColorWhite,
);

TextStyle goodHebatHomePage = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(13),
  color: primaryTextColorWhite,
);
