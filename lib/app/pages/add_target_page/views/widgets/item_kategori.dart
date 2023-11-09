import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page_themes.dart';

class ItemKategori extends StatelessWidget {
  const ItemKategori({
    super.key,
    required this.widthContainer,
    required this.widthText,
    required this.heightText,
    required this.namaKategori,
    required this.isClicked,
    required this.isIcon,
    this.iconKategori,
  });

  final double widthContainer;
  final double widthText;
  final double heightText;
  final String namaKategori;
  final bool isClicked;
  final bool isIcon;
  final String? iconKategori;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: widthContainer,
            height: sizeHeight * 0.12,
            decoration: BoxDecoration(
              color: isClicked == true ? successColor : filledTextfieldColor,
              borderRadius: defaulBorderRadius,
              boxShadow: [
                BoxShadow(
                  color: primaryTextColorGrey.withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: heightText,
            left: widthText,
            child: Container(
              width: sizeWidth * 0.25,
              child: Center(
                child: Text(
                  namaKategori,
                  style: itemKategoriTextStyle(isClicked),
                ),
              ),
            ),
          ),
          isIcon == true
              ? Positioned(
                  top: -10,
                  left: sizeWidth * 0.01,
                  child: Image.asset(
                    iconKategori!,
                    width: sizeWidth * 0.24,
                    height: sizeHeight * 0.085,
                  ),
                )
              : Positioned(
                  top: -10,
                  left: sizeWidth * 0.01,
                  child: Container(
                    width: sizeWidth * 0.24,
                    height: sizeHeight * 0.085,
                  ),
                ),
        ],
      ),
    );
  }
}
