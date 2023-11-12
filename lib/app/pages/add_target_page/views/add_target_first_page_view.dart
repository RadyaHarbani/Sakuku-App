import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sakuku_app/app/pages/add_target_page/controllers/add_target_page_controller.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/widgets/button_target_lanjut.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/widgets/list_kategori.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page_themes.dart';

class AddTargetFirstPageView extends GetView<AddTargetsPageController> {
  const AddTargetFirstPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            size: 22,
            color: primaryTextColorBlack,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
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
                      '25% selesai',
                      style: percentTextStyle,
                    ),
                    Text(
                      'Apa kategori targetmu saat ini?',
                      style: titleTextStyle,
                    ),
                    Text(
                      '*Wajib kamu isi',
                      style: subTitleTextStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeHeight * 0.39,
              ),
              Container(
                height: sizeHeight * 0.39,
                width: sizeWidth,
                child: Column(
                  children: [
                    Image.asset(
                      footerTarget,
                      width: sizeWidth,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      width: sizeWidth,
                      child: LinearPercentIndicator(
                        padding: EdgeInsets.zero,
                        animation: false,
                        animateFromLastPercent: false,
                        lineHeight: sizeHeight * 0.013,
                        percent: 0.25,
                        progressColor: fourthColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: sizeHeight * 0.35,
            child: Container(
              width: sizeWidth,
              height: sizeHeight * 0.39,
              child: Center(
                child: ListKategori(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: ButtonTargetLanjut(
          routeName: Routes.ADD_TARGET_SECOND_PAGE,
        ),
      ),
    );
  }
}
