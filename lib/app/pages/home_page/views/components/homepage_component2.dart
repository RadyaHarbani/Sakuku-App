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
      margin: EdgeInsets.symmetric(
        horizontal: sizeWidth * 0.04,
        vertical: sizeHeight * 0.01,
      ),
      height: sizeHeight * 0.18,
      width: sizeWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: defaultBoxShadow,
        color: secondaryColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hebat!', style: hebatHomePage),
                  SizedBox(height: sizeHeight * 0.003),
                  Expanded(
                    child: Text('Kamu bisa mengatur\nkeuanganmu.',
                        maxLines: 2, style: hebatChipHomePage),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: sizeWidth / 2.5,
                    padding: EdgeInsets.symmetric(vertical: sizeHeight * 0.008),
                    decoration: BoxDecoration(
                        color: fourthColor,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text('Good:)', style: goodHebatHomePage),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: -20,
              right: -10,
              child: Container(
                width: sizeWidth * 0.3,
                height: sizeHeight * 0.15,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: sizeHeight * 0.04,
              right: sizeWidth * 0.1,
              child: Image.asset(
                robotHome2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
