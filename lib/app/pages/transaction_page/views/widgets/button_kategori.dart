import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/transaction_page_themes.dart';

class ButtonKategori extends StatelessWidget {
  ButtonKategori({
    super.key,
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.subtitle,
    required this.iconSize,
  });

  final String icon;
  final String title;
  final String subtitle;
  final double iconSize;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: sizeWidth * 0.12,
                    height: sizeHeight * 0.05,
                    decoration: BoxDecoration(
                      color: thirdColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    right: -5,
                    bottom: -5,
                    child: Image.asset(
                      icon,
                      width: iconSize,
                      height: iconSize,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: buttonKategoriTitle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle,
                    style: buttonKategoriSubtitle,
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: sizeWidth * 0.06,
            height: sizeHeight * 0.04,
            decoration: BoxDecoration(
              color: filledTextfieldColor,
              shape: BoxShape.circle,
            ),
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: isSelected == true ? successColor : Colors.transparent,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
