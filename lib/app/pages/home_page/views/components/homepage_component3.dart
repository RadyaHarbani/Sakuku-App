import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/homepage_themes.dart';

class HomePageComponentThree extends StatelessWidget {
  const HomePageComponentThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: sizeWidth * 0.05, vertical: sizeHeight * 0.018),
      // height: sizeHeight * 0.203,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: defaultBoxShadow,
      ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transaksi Terakhir',
                    style: containerTittleHomePage(false)),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: sizeWidth * 0.05, vertical: sizeHeight * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('KAMIS, 18 OKTOBER 2023', style: containerDateHomePage),
                SizedBox(height: sizeHeight * 0.015),
                Container(
                  height: sizeHeight * 0.085,
                  margin: EdgeInsets.only(bottom: sizeHeight * 0.015),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: primaryTextColorGrey.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: sizeWidth * 0.045),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: sizeWidth * 0.02),
                              child: Image.asset(
                                iconPemasukan,
                                height: sizeHeight * 0.045,
                              ),
                            ),
                            SizedBox(
                              width: sizeWidth * 0.01,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Pemasukan ', style: moneyUsedHomePage),
                                Text('Gajian Kantor', style: paydayHomePage),
                              ],
                            ),
                          ],
                        ),
                        Text('2.000.000', style: moneyRemainderHomePage(false))
                      ],
                    ),
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
