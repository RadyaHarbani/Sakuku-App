import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/budget_page.dart/views/budget_page_view.dart';
import 'package:sakuku_app/app/pages/home_page/views/home_page_view.dart';
import 'package:sakuku_app/app/pages/profile_page/views/profile_page_view.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/all_transactions_page_view.dart';

class HomePageController extends GetxController {
  final RxBool showTitle = false.obs;
  final RxBool showButton = false.obs;
  final RxDouble scrollOffset = 0.0.obs;
  final RxInt currentIndexBottomNav = 0.obs;
  final RxString userFullName = "".obs;
  final RxString balance = "".obs;
  final ScrollController scrollController = ScrollController();
  // final balanceController = StreamController<String>();
  // Stream<String> get balanceStream => balanceController.stream;
  final Stream<QuerySnapshot> _streamBalance = FirebaseFirestore.instance
      .collection('users')
      .where("email", isEqualTo: 'radya@gmail.com')
      .limit(1)
      .snapshots();
  Stream<QuerySnapshot> get streamBalance => _streamBalance;
  final Stream<QuerySnapshot> _streamPemasukan = FirebaseFirestore.instance
      .collection('transaction')
      .where("nominalTransaksiPemasukan")
      .orderBy("timestamp", descending: true)
      .limit(1)
      .snapshots();
  Stream<QuerySnapshot> get streamPemasukan => _streamPemasukan;
  final Stream<QuerySnapshot> _streamPengeluaran = FirebaseFirestore.instance
      .collection('transaction')
      .where("nominalTransaksiPengeluaran")
      .orderBy("timestamp", descending: true)
      .limit(1)
      .snapshots();
  Stream<QuerySnapshot> get streamPengeluaran => _streamPengeluaran;
  final currentUser = FirebaseAuth.instance.currentUser;
  bool isScrollingUp = false;
  double previousOffset = 0.0;

  RxList<Icon> listIconNav = [
    Icon(Icons.home_filled),
    Icon(Icons.wallet_rounded),
    Icon(Icons.date_range_rounded),
    Icon(Icons.person_2_rounded),
  ].obs;

  RxList listPageValue = [
    HomePageView(),
    BudgetPageView(),
    AllTransactionsPageView(),
    ProfilePageView(),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      scrollListener(scrollController.offset);
      fetchFullName(currentUser!.uid);
    });
    // balanceUser();
  }

  void scrollListener(double offset) {
    scrollOffset.value = offset;
    if (offset > 320) {
      showTitle.value = true;
    } else if (offset <= 320) {
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

  Stream<QuerySnapshot<Map<String, dynamic>>>
      streamTransactionPengeluaran() async* {
    yield* FirebaseFirestore.instance
        .collection("transaction")
        .where('jenisTransaksi', isEqualTo: 'Pengeluaran')
        .limit(1)
        .snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>>
      streamTransactionPemasukan() async* {
    yield* FirebaseFirestore.instance
        .collection("transaction")
        .where('jenisTransaksi', isEqualTo: 'Pemasukan')
        .limit(1)
        .snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> balanceUserToday() async* {
    yield* FirebaseFirestore.instance
        .collection("users")
        .where('email', isEqualTo: FirebaseAuth.instance.currentUser!.email)
        .limit(1)
        .snapshots();
  }

  void signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAllNamed("/login");
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }
}
