import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/homepage_themes.dart';

class HomePageComponentTwo extends StatelessWidget {
  const HomePageComponentTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(
          horizontal: sizeWidth * 0.05, vertical: sizeHeight * 0.03),
      height: sizeHeight * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: fourthColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hebat!', style: hebatHomePage),
              Expanded(
                child: Text('Kamu bisa mengatur\nkeuanganmu.',
                    maxLines: 2, style: hebatChipHomePage),
              ),
              Container(
                alignment: Alignment.center,
                width: sizeWidth / 3,
                padding: EdgeInsets.symmetric(vertical: sizeHeight * 0.005),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Text('Good:)', style: goodHebatHomePage),
              )
            ],
          ),
          Stack(
            children: [
              Positioned(
                bottom: 0,
                child: CircleAvatar(
                  radius: 108,
                ),
              ),
              Image.asset(robotHome2)
            ],
          )
        ],
      ),
    );
  }
}
