import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page/add_target_page_themes.dart';

class ButtonKalenderTarget extends StatelessWidget {
  const ButtonKalenderTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      height: sizeHeight * 0.075,
      width: sizeWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: filledTextfieldColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "17, November 2023",
              style: tanggalKalenderStyle,
            ),
            Icon(
              Icons.calendar_today_outlined,
              color: hintTextColor,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
