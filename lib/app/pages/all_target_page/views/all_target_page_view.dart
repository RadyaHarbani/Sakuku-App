import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/all_target_page_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/budget_page_themes.dart';

class AllTargetPageView extends StatelessWidget {
  const AllTargetPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text("Target Kamu", style: appbarTextBudgetPage),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: aboveBackgroundColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  footerTargetBlack,
                  width: sizeWidth,
                  fit: BoxFit.fill,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Kejar Semua Targetmu',
                        style: titleAllTargetPage,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: sizeHeight * 0.015),
                        padding: EdgeInsets.symmetric(
                            horizontal: sizeWidth * 0.06,
                            vertical: sizeHeight * 0.007),
                        decoration: BoxDecoration(
                            color: textBudgetColor,
                            borderRadius: BorderRadius.circular(26)),
                        child: Column(
                          children: [
                            Text(
                              'Selalu cek deadlinemu yaa',
                              style: textAllTargetPage,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: sizeHeight * 0.23),
                    padding: EdgeInsets.only(
                        top: sizeHeight * 0.05,
                        right: sizeWidth * 0.1,
                        left: sizeWidth * 0.1),
                    height: sizeHeight * 0.55,
                    width: sizeWidth,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: sizeHeight * 0.02),
                          height: sizeHeight * 0.2,
                          width: sizeWidth,
                          decoration: BoxDecoration(
                              color: textBudgetColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Text(
                          'Nama Target',
                          style: nameAllTargetPage,
                        ),
                        Text(
                          'Target Pencapaian 21 Oktober 2023',
                          style: achievementAllTarget,
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: sizeHeight * 0.02),
                          height: sizeHeight * 0.015,
                          width: sizeWidth,
                          decoration: BoxDecoration(
                              color: textBudgetColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp0rb terkumpul',
                              style: collectedAllTargetPage,
                            ),
                            Text(
                              'Dari Rp762rb',
                              style: collectedAllTargetPage,
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: sizeHeight * 0.02, horizontal: sizeWidth * 0.05),
              width: sizeWidth,
              decoration: BoxDecoration(
                  color: aboveBackgroundColor, boxShadow: defaultBoxShadow),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('routeName');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromHeight(sizeHeight * 0.09),
                  backgroundColor: secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: defaulBorderRadius,
                  ),
                ),
                child: Text('Tambah Target', style: addAllTargetPage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
