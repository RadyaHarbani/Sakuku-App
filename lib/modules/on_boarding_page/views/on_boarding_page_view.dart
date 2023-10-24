import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/routes/app_pages.dart';
import '../controllers/on_boarding_page_controller.dart';
import 'package:sakuku_app/modules/on_boarding_page/views/widgets/on_boarding_widget.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SvgPicture.asset(
            'assets/logos/logo_horizontal.svg',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
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
              padding: const EdgeInsets.only(right: 25, left: 25, bottom: 30),
              child: Column(
                children: [
                  ...List.generate(
                    contentList.list_on_board.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Obx(() => DotIndicator(
                            isActive: index == controller.currentIndex.value,
                          )),
                    ),
                  ),
                  Spacer(),
                  Obx(
                    () => controller.currentIndex.value ==
                            contentList.list_on_board.length - 1
                        ? GestureDetector(
                            onTap: () => Get.offAndToNamed(Routes.LANDING_PAGE),
                            child: Container(
                              height: 52,
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
                                  'Mulai Sekarang',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              controller.pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            },
                            child: Container(
                              height: 52,
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
                                  'Lanjut',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
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
