import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/home_page/views/widgets/homepage_component1.dart';
import 'package:sakuku_app/app/pages/home_page/views/widgets/homepage_component2.dart';
import 'package:sakuku_app/app/pages/home_page/views/widgets/homepage_component3.dart';
import 'package:sakuku_app/app/pages/home_page/views/widgets/homepage_component4.dart';
import 'package:sakuku_app/app/widgets/custom_appbar_home_page.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/app/pages/home_page/controllers/home_page_controller.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/homepage_themes.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: sizeWidth * 0.048,
                vertical: sizeHeight * 0.01,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: sizeWidth * 0.3,
                        height: sizeHeight * 0.047,
                        decoration: BoxDecoration(
                          color: thirdColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text("October 2023", style: bulanChipHomepage),
                        ),
                      ),
                      Container(
                        width: sizeWidth * 0.26,
                        height: sizeHeight * 0.047,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text("Good :)", style: goodChipHomepage),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizeHeight * 0.023,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: sizeWidth * 0.014),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("SISA KEUANGAN",
                                    style: keuanganHomePage(false)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("POSITIF", style: keuanganHomePage(true)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Rp", style: rpHomePage(true, true)),
                                SizedBox(
                                  width: sizeWidth * 0.01,
                                ),
                                Text("1.000.000", style: moneyHomePage(true)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: sizeWidth * 0.065,
                        bottom: 0,
                        child: Image.asset(robotHome1),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: sizeWidth / 2.3,
                        height: sizeHeight * 0.056,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.24),
                            borderRadius: defaulBorderRadius),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Transform.rotate(
                              angle: 4.7,
                              child: Container(
                                width: sizeWidth * 0.07,
                                height: sizeHeight * 0.027,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 13,
                                  color: backgroundColor,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text("Rp ", style: rpHomePage(false, false)),
                                Text("500.000", style: moneyHomePage(false)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: sizeWidth / 2.3,
                        height: sizeHeight * 0.056,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.24),
                          borderRadius: defaulBorderRadius,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Transform.rotate(
                              angle: pi / 2,
                              child: Container(
                                width: sizeWidth * 0.07,
                                height: sizeHeight * 0.027,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 13,
                                  color: backgroundColor,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text("Rp ", style: rpHomePage(false, false)),
                                Text("500.000", style: moneyHomePage(false)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: sizeHeight * 0.15),
                  width: sizeWidth,
                  height: sizeHeight,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: defaultBottomSheetRadius),
                ),
                Column(
                  children: [
                    HomePageComponentOne(),
                    HomePageComponentTwo(),
                    HomePageComponentThree(),
                    HomePageComponentFour(),
                  ],
                ),
              ],
            ),
            Image.asset(
              footerWhite,
              width: sizeWidth,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: sizeHeight * 0.15,
            )
          ],
        ),
      ),
    );
  }
}
