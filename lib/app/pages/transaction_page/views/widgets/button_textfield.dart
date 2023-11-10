import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page_themes.dart';

class ButtonTextfield extends StatelessWidget {
  const ButtonTextfield({
    super.key,
    required this.onPressed,
    required this.namaIcon,
    required this.scaleIcon,
    required this.hintText,
  });

  final Function() onPressed;
  final String namaIcon;
  final double scaleIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: filledTextfieldColor,
        padding: EdgeInsets.symmetric(
          horizontal: sizeWidth * 0.05,
          vertical: sizeHeight * 0.023,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: defaulBorderRadius,
        ),
        elevation: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                namaIcon,
                scale: scaleIcon,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                hintText,
                style: hintTextStyle,
              ),
            ],
          ),
          Transform.rotate(
            angle: pi / 2,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
              color: hintTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
