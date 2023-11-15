import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/home_page/views/home_page_view.dart';
import 'package:sakuku_app/app/pages/profile_page/views/profile_page_view.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/all_transactions_page_view.dart';

class HomePageController extends GetxController {
  final RxBool showTitle = false.obs;
  final RxBool showButton = false.obs;
  final RxDouble scrollOffset = 0.0.obs;
  final RxInt currentIndexBottomNav = 0.obs;
  final RxString userFullName = "".obs;
  final ScrollController scrollController = ScrollController();
  final currentUser = FirebaseAuth.instance.currentUser;
  bool isScrollingUp = false;
  double previousOffset = 0.0;

  RxList<Icon> listIconNav = [
    Icon(Icons.home_filled),
    Icon(Icons.wallet_rounded),
    Icon(Icons.date_range_rounded),
    Icon(Icons.person_2_rounded),
  ].obs;

  RxList<Text> listLabelNav = [
    Text("Home"),
    Text("Budget"),
    Text("Transaksi"),
    Text("Profil"),
  ].obs;

  RxList<Widget> listPageValue = [
    HomePageView(),
    Container(),
    AllTransactionsPageView(),
    ProfilePageView(),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      scrollListener(scrollController.offset);
      fetchFullName(currentUser!.uid);
      // floatingScrollListener(scrollController.offset);
    });
  }

  void scrollListener(double offset) {
    scrollOffset.value = offset;
    if (offset > 350) {
      showTitle.value = true;
    } else if (offset <= 350) {
      showTitle.value = false;
    }
  }

  void fetchFullName(String userId) async {
    if (userId != "") {
      var snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();
      if (snapshot.exists) {
        userFullName.value = snapshot.data()?['username'] ?? "Guest";
      } else {
        userFullName.value = "Guest";
      }
    }
  }
  // void floatingScrollListener(double offset) {
  //   if (offset > previousOffset) {
  //     isScrollingUp = false;
  //     showButton.value = false;
  //   } else if (offset < previousOffset) {
  //     isScrollingUp = false;
  //     showButton.value = false;
  //   } else {
  //     isScrollingUp = true;
  //     showButton.value = true;
  //   }
  //   previousOffset = offset;
  // }
}
