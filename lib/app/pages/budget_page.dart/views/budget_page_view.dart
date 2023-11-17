import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/budget_page_themes.dart';

class BudgetPageView extends StatelessWidget {
  const BudgetPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          centerTitle: true,
          title: Text("Budget Bulanan", style: appbarTextBudgetPage),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info,
                size: 24,
                color: primaryTextColorWhite,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: sizeHeight * 0.02, horizontal: sizeWidth * 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sisa Budget', style: textBudgetPage),
                        Text('Edit', style: editChipBudgetPage)
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: sizeHeight * 0.015, bottom: sizeHeight * 0.05),
                      child: Row(
                        children: [
                          Text('Rp', style: moneyBudgetPage(false, false)),
                          Text('0', style: moneyBudgetPage(true, true))
                        ],
                      ),
                    ),
                    Container(
                      width: sizeWidth,
                      margin: EdgeInsets.only(bottom: sizeHeight * 0.006),
                      child: LinearPercentIndicator(
                        lineHeight: sizeHeight * 0.02,
                        barRadius: Radius.circular(5),
                        percent: 0.5,
                        progressColor: successColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Terpakai Rp293.000', style: useBudgetPage),
                        Text('dari Rp293.000', style: useBudgetPage)
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: sizeHeight * 0.063),
                    width: sizeWidth,
                    height: sizeHeight,
                    color: backgroundColor,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: sizeWidth * 0.045,
                            left: sizeWidth * 0.045,
                            bottom: sizeHeight * 0.025,
                            top: sizeHeight * 0.006),
                        height: 86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: textBudgetColor,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: sizeWidth * 0.045),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Kategori Budget',
                                style: kategoriChipBudgetPage),
                            Text("+Tambah", style: plusBudgetPage)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
