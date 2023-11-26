import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sakuku_app/app/pages/home_page/views/components/homepage_component1.dart';
import 'package:sakuku_app/app/pages/home_page/views/components/homepage_component2.dart';
import 'package:sakuku_app/app/pages/home_page/views/components/homepage_component3.dart';
import 'package:sakuku_app/app/pages/home_page/views/components/homepage_component4.dart';
import 'package:sakuku_app/app/pages/home_page/views/components/navbar_component/custom_appbar_home_page.dart';
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
                    height: sizeHeight * 0.035,
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
                            SizedBox(
                              height: sizeHeight * 0.015,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Rp", style: rpHomePage(true, true)),
                                SizedBox(
                                  width: sizeWidth * 0.02,
                                ),
                                StreamBuilder<QuerySnapshot>(
                                  stream: controller.streamBalance,
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      Map<String, dynamic> documentFields =
                                          snapshot.data!.docs[0].data()
                                              as Map<String, dynamic>;
                                      double value = double.parse(
                                          documentFields['balance'].toString());
                                      final formatter =
                                          NumberFormat("#,##0", "id_ID");
                                      return Text(
                                        formatter.format(value).toString(),
                                        style: moneyHomePage(true),
                                      );
                                    } else {
                                      return Text(
                                        '0',
                                        style: moneyHomePage(true),
                                      );
                                    }
                                  },
                                )
                              ],
                            ),
                            SizedBox(
                              height: sizeHeight * 0.03,
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
                      Expanded(
                        child: Container(
                          height: sizeHeight * 0.065,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.24),
                            borderRadius: defaulBorderRadius,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Transform.rotate(
                                angle: pi / 2,
                                child: Container(
                                  width: sizeWidth * 0.07,
                                  height: sizeHeight * 0.027,
                                  decoration: BoxDecoration(
                                    color: successColor,
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
                                  StreamBuilder<QuerySnapshot>(
                                      stream: controller.streamBalance,
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          Map<String, dynamic> documentFields =
                                              snapshot.data!.docs[0].data()
                                                  as Map<String, dynamic>;
                                          double value = double.parse(
                                              documentFields['last_income']
                                                  .toString());
                                          final formatter =
                                              NumberFormat("#,##0", "id_ID");
                                          return Text(
                                            formatter.format(value).toString(),
                                            style: moneyHomePage(false),
                                          );
                                        } else {
                                          return Text(
                                            'Loading...',
                                            style: moneyHomePage(false),
                                          );
                                        }
                                      }),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: sizeWidth * 0.01,
                      ),
                      Expanded(
                        child: Container(
                          height: sizeHeight * 0.065,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.24),
                            borderRadius: defaulBorderRadius,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  StreamBuilder<QuerySnapshot>(
                                    stream: controller.streamBalance,
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        Map<String, dynamic> documentFields =
                                            snapshot.data!.docs[0].data()
                                                as Map<String, dynamic>;
                                        double value = double.parse(
                                            documentFields['last_expense']
                                                .toString());
                                        final formatter =
                                            NumberFormat("#,##0", "id_ID");
                                        return Text(
                                          formatter.format(value).toString(),
                                          style: moneyHomePage(false),
                                        );
                                      } else {
                                        return Text(
                                          'Loading...',
                                          style: moneyHomePage(false),
                                        );
                                      }
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
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
                  margin: EdgeInsets.only(top: sizeHeight * 0.1),
                  width: sizeWidth,
                  height: sizeHeight * 1.08,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                  ),
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
              height: sizeHeight * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
