import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/app/pages/on_boarding_page/views/widgets/dot_indicator_onboard_page.dart';
import 'package:sakuku_app/app/pages/on_boarding_page/views/widgets/on_boarding_content_page.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/on_boarding_page_themes.dart';
import '../controllers/on_boarding_page_controller.dart';

class OnBoardingPageView extends GetView<OnBoardingPageController> {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingContentList contentList = OnBoardingContentList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.06),
          child: SvgPicture.asset(
            logoHorizontal,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.currentIndex.value = value;
                },
                itemCount: contentList.list_on_board.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  image: contentList.list_on_board[index].image,
                  title: contentList.list_on_board[index].title,
                  description: contentList.list_on_board[index].description,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: sizeWidth * 0.025,
                left: sizeWidth * 0.025,
                bottom: sizeHeight * 0.04,
              ),
              child: Column(
                children: [
                  Obx(
                    () => GestureDetector(
                      onTap: () => controller.currentIndex.value ==
                              contentList.list_on_board.length - 1
                          ? Get.offAndToNamed(Routes.LANDING_PAGE)
                          : controller.pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            ),
                      child: Container(
                        height: 55,
                        width: 276,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(57, 62, 70, 1),
                                Color.fromRGBO(109, 152, 134, 1)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )),
                        child: Center(
                          child: Text(
                            controller.currentIndex.value ==
                                    contentList.list_on_board.length - 1
                                ? 'Mulai Sekarang'
                                : "Lanjut",
                            style: buttonTextOnboarding,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        contentList.list_on_board.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(top: 20, left: 3),
                          child: Obx(() => DotIndicator(
                                isActive:
                                    index == controller.currentIndex.value,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
