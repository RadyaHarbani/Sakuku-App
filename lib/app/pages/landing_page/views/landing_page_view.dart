import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/app/pages/landing_page/views/widgets/button_landing_page.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/landing_page_themes.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: sizeHeight * 0.1,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.015),
          child: SvgPicture.asset(
            logoHorizontal,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: sizeHeight * 0.04,
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    landingImage1,
                  ),
                ),
                SizedBox(height: sizeHeight * 0.023),
                Image.asset(landingImage2),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: sizeWidth,
              height: sizeHeight * 0.28,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                boxShadow: [
                  BoxShadow(
                    color: primaryTextColorBlack.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 14,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    child: Text(
                      "Apakah Kamu Punya Akun?",
                      textAlign: TextAlign.center,
                      style: titleLandingPage,
                    ),
                  ),
                  SizedBox(height: sizeHeight * 0.04),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.09),
                    child: Row(
                      children: [
                        ButtonLandingPage(
                          onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
                          buttonColor: secondaryColor,
                          textButton: "Ya",
                          isBorder: false,
                        ),
                        SizedBox(width: sizeWidth * 0.025),
                        ButtonLandingPage(
                          onPressed: () => Get.toNamed(Routes.REGISTER_PAGE),
                          buttonColor: secondaryColor,
                          textButton: "Tidak",
                          isBorder: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
