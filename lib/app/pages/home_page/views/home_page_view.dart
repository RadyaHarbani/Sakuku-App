import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/pages/home_page/views/widgets/homepage_component1.dart';
import 'package:sakuku_app/app/pages/home_page/views/widgets/homepage_component2.dart';
import 'package:sakuku_app/app/pages/home_page/views/widgets/homepage_component3.dart';
import 'package:sakuku_app/app/pages/home_page/views/widgets/homepage_component4.dart';
import 'package:sakuku_app/app/widgets/custom_appbar_home_page.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/app/pages/home_page/controllers/home_page_controller.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';

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
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: thirdColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "October 2023",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: figmaFontsize(14),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Good :)",
                            style: GoogleFonts.poppins(
                              color: backgroundColor,
                              fontSize: figmaFontsize(14),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "SISA KEUANGAN",
                                  style: GoogleFonts.poppins(
                                    color: primaryTextColorGrey,
                                    letterSpacing: 1,
                                    fontSize: figmaFontsize(14),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "POSITIF",
                                  style: GoogleFonts.poppins(
                                    color: secondaryColor,
                                    letterSpacing: 1,
                                    fontSize: figmaFontsize(14),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Rp",
                                  style: GoogleFonts.poppins(
                                    fontSize: figmaFontsize(13),
                                    height: 4,
                                    color: primaryTextColorGrey.withOpacity(.7),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1.000.000",
                                  style: GoogleFonts.poppins(
                                    fontSize: figmaFontsize(30),
                                    color: backgroundColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Image.asset(
                            'assets/images/home_images/robot_home_image1.png'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "October 2023",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: figmaFontsize(14),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Good :)",
                                style: GoogleFonts.poppins(
                                  color: primaryTextColorWhite,
                                  fontSize: figmaFontsize(14),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "SISA KEUANGAN",
                                      style: GoogleFonts.poppins(
                                        color: filledTextfieldColor,
                                        letterSpacing: 1,
                                        fontSize: figmaFontsize(14),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "POSITIF",
                                      style: GoogleFonts.poppins(
                                        color: secondaryColor,
                                        letterSpacing: 1,
                                        fontSize: figmaFontsize(14),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Rp",
                                      style: GoogleFonts.poppins(
                                        fontSize: figmaFontsize(13),
                                        height: 4,
                                        color: filledTextfieldColor
                                            .withOpacity(.7),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "1.000.000",
                                      style: GoogleFonts.poppins(
                                        fontSize: figmaFontsize(30),
                                        color: backgroundColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 25,
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
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.24),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.rotate(
                                  angle: 4.7,
                                  child: Container(
                                    width: 23,
                                    height: 23,
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
                                    Text(
                                      "Rp ",
                                      style: GoogleFonts.poppins(
                                        fontSize: figmaFontsize(13),
                                        height: 4,
                                        color: filledTextfieldColor
                                            .withOpacity(.7),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "500.000",
                                      style: GoogleFonts.poppins(
                                        fontSize: figmaFontsize(20),
                                        color: backgroundColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: sizeWidth / 2.3,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.24),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.rotate(
                                  angle: pi / 2,
                                  child: Container(
                                    width: 23,
                                    height: 23,
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
                                    Text(
                                      "Rp ",
                                      style: GoogleFonts.poppins(
                                        fontSize: figmaFontsize(13),
                                        height: 4,
                                        color: filledTextfieldColor
                                            .withOpacity(.7),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "500.000",
                                      style: GoogleFonts.poppins(
                                        fontSize: figmaFontsize(20),
                                        color: backgroundColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        width: sizeWidth,
                        height: sizeHeight,
                        decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
