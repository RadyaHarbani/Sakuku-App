import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page_themes.dart';

class CustomButtonSimpan extends StatelessWidget {
  const CustomButtonSimpan({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth * 0.91,
      height: sizeHeight * 0.07,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: defaulBorderRadius,
          ),
        ),
        child: Text(
          'Simpan',
          style: buttonLanjutStyle,
        ),
      ),
    );
  }
}
