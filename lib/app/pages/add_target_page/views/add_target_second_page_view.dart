import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/widgets/button_target_lanjut.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/widgets/custom_textfield_target.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page/add_target_page_themes.dart';

class AddTargetSecondPageView extends StatelessWidget {
  const AddTargetSecondPageView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.close,
            size: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 5),
              height: sizeHeight * 0.095,
              width: sizeWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '50% selesai',
                    style: percentTextStyle,
                  ),
                  Text(
                    'Apa nama target kamu?',
                    style: titleTextStyle,
                  ),
                  Text(
                    '*Wajib kamu isi',
                    style: subTitleTextStyle,
                  ),
                ],
              ),
            ),
            CustomTextfieldTarget(
              hintText: 'Misal : "Beli Mobil 😁"',
              isNumber: false,
            ),
            SizedBox(
              height: sizeHeight * 0.27,
            ),
            Container(
              height: sizeHeight * 0.39,
              width: sizeWidth,
              child: Column(
                children: [
                  Image.asset(footerTarget, width: sizeWidth),
                  Container(
                    width: sizeWidth,
                    child: LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      animation: false,
                      animateFromLastPercent: false,
                      lineHeight: sizeHeight * 0.013,
                      percent: 0.5,
                      progressColor: fourthColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ButtonTargetLanjut(
                      routeName: Routes.ADD_TARGET_THIRD_PAGE,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
