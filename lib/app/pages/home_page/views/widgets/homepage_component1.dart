import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/homepage_themes.dart';

class HomePageComponentOne extends StatelessWidget {
  const HomePageComponentOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: sizeWidth * 0.05, vertical: sizeHeight * 0.03),
      // height: sizeHeight * 0.287,
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
                    topRight: Radius.circular(20)),
                boxShadow: defaultBoxShadow),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  'Keuangan\nBulan Ini (bulanan)',
                  style: containerTittleHomePage(true),
                  maxLines: 2,
                )),
                Image.asset(
                  iconKeuangan,
                  height: sizeHeight * 0.034,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: sizeWidth * 0.05, vertical: sizeHeight * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('OKTOBER 2023', style: containerDateHomePage),
                SizedBox(height: sizeHeight * 0.01),
                Container(
                  height: sizeHeight * 0.14,
                  margin: EdgeInsets.only(bottom: sizeHeight * 0.015),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: sizeWidth * 0.045),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Budget', style: BudgetHomePage),
                            Row(
                              children: [
                                Text('sisa ', style: chipHomePage),
                                Text('-1.000',
                                    style: moneyRemainderHomePage(true)),
                              ],
                            )
                          ],
                        ),
                        LinearPercentIndicator(
                          barRadius: Radius.circular(6),
                          padding: EdgeInsets.zero,
                          animation: true,
                          animateFromLastPercent: true,
                          animationDuration: 1000,
                          lineHeight: 8,
                          percent: 0.1,
                          progressColor: Color(0xFF00E7B1),
                        ),
                        Row(
                          children: [
                            Text('terpakai ', style: chipHomePage),
                            Text('Rp1.000.000 ', style: moneyUsedHomePage),
                            Text('/ ', style: chipHomePage),
                            Text('Rp2.000.000', style: chipHomePage),
                          ],
                        )
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
