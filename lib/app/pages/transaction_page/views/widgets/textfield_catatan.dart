import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page_themes.dart';

class TextfieldCatatan extends StatelessWidget {
  const TextfieldCatatan({
    super.key,
    required this.inputType,
    required this.hintText,
    required this.namaIcon,
    required this.scale,
  });

  final TextInputType inputType;
  final String hintText;
  final String namaIcon;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth,
      child: TextField(
        keyboardType: inputType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: sizeHeight * 0.024),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Image.asset(
              namaIcon,
              scale: scale,
            ),
          ),
          filled: true,
          fillColor: filledTextfieldColor,
          hintText: hintText,
          hintStyle: hintTextStyle,
          enabledBorder: OutlineInputBorder(
            borderRadius: defaulBorderRadius,
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: defaulBorderRadius,
            borderSide: BorderSide(
              color: successColor,
            ),
          ),
        ),
        style: inputTextStyle,
      ),
    );
  }
}
