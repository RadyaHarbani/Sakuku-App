import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/login_register_page_themes.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.025),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: primaryTextColorBlack,
              thickness: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.025),
            child: Text(
              "Or",
              style: orWidgetStyle,
            ),
          ),
          Expanded(
            child: Divider(
              color: primaryTextColorBlack,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
