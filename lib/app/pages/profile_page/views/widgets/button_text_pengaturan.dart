import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/profile_page_themes.dart';

class ButtonTextPengaturan extends StatelessWidget {
  const ButtonTextPengaturan({
    super.key,
    required this.namaIcon,
    required this.scaleIcon,
    required this.namaPengaturan,
    required this.isWithChip,
  });

  final String namaIcon;
  final double scaleIcon;
  final String namaPengaturan;
  final bool isWithChip;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight * 0.068,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    namaIcon,
                    scale: scaleIcon,
                  ),
                  SizedBox(
                    width: sizeWidth * 0.04,
                  ),
                  Text(
                    namaPengaturan,
                    style: textButtonPengaturan,
                  ),
                  SizedBox(
                    width: sizeWidth * 0.03,
                  ),
                  isWithChip == true
                      ? Container(
                          height: sizeHeight * 0.032,
                          width: sizeWidth * 0.28,
                          decoration: BoxDecoration(
                            color: filledTextfieldColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Rekomendasi",
                              style: chipRekomendasi,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: primaryTextColorBlack,
                size: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
