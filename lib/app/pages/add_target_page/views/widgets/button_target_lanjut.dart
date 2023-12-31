import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page_themes.dart';

class ButtonTargetLanjut extends StatelessWidget {
  const ButtonTargetLanjut({
    super.key,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth * 0.91,
      height: sizeHeight * 0.07,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(routeName);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: defaulBorderRadius,
          ),
        ),
        child: Text(
          'Lanjut',
          style: buttonLanjutStyle,
        ),
      ),
    );
  }
}
