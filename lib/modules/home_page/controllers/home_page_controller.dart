import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final RxBool showTitle = false.obs;
  final RxDouble scrollOffset = 0.0.obs;
  final ScrollController scrollController = ScrollController();

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
