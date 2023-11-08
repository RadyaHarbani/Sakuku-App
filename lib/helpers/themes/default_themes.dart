//Convet Fontsize from Figma
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

//NumberFormat
final currencyMoney = NumberFormat("#,##0", "en_US");

//MediaQuery
double sizeWidth = Get.mediaQuery.size.width;
double sizeHeight = Get.mediaQuery.size.height;

//Border radius
final BorderRadius defaulBorderRadius = BorderRadius.circular(15);
final BorderRadius defaultBottomSheetRadius = BorderRadius.only(
  topLeft: Radius.circular(15),
  topRight: Radius.circular(15),
);
final BorderRadius defaultTopSheetRadius = BorderRadius.only(
  bottomLeft: Radius.circular(15),
  bottomRight: Radius.circular(15),
);
final List<BoxShadow> defaultBoxShadow = [
  BoxShadow(
    blurRadius: 25,
    spreadRadius: 0,
    offset: Offset(0, 2),
    color: Colors.black.withOpacity(0.08),
  )
];

//Height gap
final hGap5 = SizedBox(height: 5);
final hGap10 = SizedBox(height: 10);
final hGap15 = SizedBox(height: 15);
final hGap20 = SizedBox(height: 20);
final hGap30 = SizedBox(height: 30);
final hGap40 = SizedBox(height: 40);

//Width gap
final wGap5 = SizedBox(width: 5);
final wGap10 = SizedBox(width: 10);
final wGap15 = SizedBox(width: 15);
final wGap20 = SizedBox(width: 20);
