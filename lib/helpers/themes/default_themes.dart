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
final List<BoxShadow> defaultBoxShadow = [
  BoxShadow(
    blurRadius: 25,
    spreadRadius: 0,
    offset: Offset(0, 2),
    color: Colors.black.withOpacity(0.08),
  )
];