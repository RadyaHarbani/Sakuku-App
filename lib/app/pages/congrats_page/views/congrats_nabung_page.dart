import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/congrats_page/controllers/congrats_page_controller.dart';
import 'package:sakuku_app/app/pages/congrats_page/views/widgets/footer_white_congrats_page.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/congrats_page_themes.dart';

class CongratsNabungPage extends GetView<CongratsPageController> {
  const CongratsNabungPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              size: 22,
              color: primaryTextColorBlack,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.1),
            child: Column(
              children: [
                Image.asset(robotCongratsTarget),
                Container(
                  margin: EdgeInsets.only(
                      top: sizeHeight * 0.035, bottom: sizeHeight * 0.02),
                  width: sizeWidth * 0.79,
                  child: Text('Semangat Terus Nabungnya Radya!',
                      textAlign: TextAlign.center, style: titleCongratsPage),
                ),
                Text('Yuk lebih sering nabung, biar targetmu cepat tercapai',
                    textAlign: TextAlign.center,
                    style: textCongratsPage(false)),
              ],
            ),
          ),
          Spacer(),
          FooterWhiteCongratsPage()
        ],
      ),
    );
  }
}
