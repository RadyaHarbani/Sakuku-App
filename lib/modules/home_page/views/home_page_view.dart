import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/components/custom_appbar_home_page.dart';
import 'package:sakuku_app/helpers/themes.dart';
import 'package:sakuku_app/modules/home_page/controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: CustomAppbar(),
      ),
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: primaryColor,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: primaryColor,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: primaryColor,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: primaryColor,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.purple,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
