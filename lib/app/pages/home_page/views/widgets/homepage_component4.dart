import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/homepage_themes.dart';

class HomePageComponentFour extends StatelessWidget {
  const HomePageComponentFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: sizeWidth * 0.05, vertical: sizeHeight * 0.03),
      // height: sizeHeight * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: sizeWidth * 0.05, vertical: sizeHeight * 0.02),
            decoration: BoxDecoration(
                color: thirdColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Fitur Menarik', style: containerTittleHomePage(false)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: sizeWidth * 0.05, vertical: sizeHeight * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: sizeWidth * 0.02,
                      vertical: sizeHeight * 0.01),
                  width: sizeWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: successColor),
                  child: Row(
                    children: [
                      Transform.rotate(
                        angle: pi,
                        child: Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.info_outline,
                            size: 15,
                            color: backgroundColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                            'Sekarang kamu bisa menambahkan target apa yang ingin kamu capai disini, kami akan membantu :)',
                            maxLines: 2,
                            style: fiturHomePage),
                      )
                    ],
                  ),
                ),
                SizedBox(height: sizeHeight * 0.013),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: sizeWidth * 0.017,
                      vertical: sizeHeight * 0.02),
                  margin: EdgeInsets.only(bottom: sizeHeight * 0.015),
                  width: sizeWidth,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: sizeWidth * 0.019),
                        child: Image.asset(
                          iconTarget,
                          height: sizeHeight * 0.044,
                        ),
                      ),
                      Text('Target Tabungan',
                          style: containerTittleHomePage(false)),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
