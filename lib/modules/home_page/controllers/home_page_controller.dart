import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/modules/home_page/views/home_page_view.dart';

class HomePageController extends GetxController {
  final RxBool showTitle = false.obs;
  final RxDouble scrollOffset = 0.0.obs;
  final RxInt currentIndexBottomNav = 0.obs;
  final ScrollController scrollController = ScrollController();

  RxList<Icon> listIconNav = [
    Icon(Icons.home_filled),
    Icon(Icons.wallet_rounded),
    Icon(Icons.date_range_rounded),
    Icon(Icons.person_2_rounded),
  ].obs;

  RxList<Widget> listPageValue = [
    HomePageView(),
    Container(),
    Container(),
    Container(
      child: Text("gdggd"),
    ),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      scrollListener(scrollController.offset);
    });
  }

  void scrollListener(double offset) {
    scrollOffset.value = offset;
    if (offset > 200) {
      showTitle.value = true;
    } else if (offset <= 200) {
      showTitle.value = false;
    }
  }
}
