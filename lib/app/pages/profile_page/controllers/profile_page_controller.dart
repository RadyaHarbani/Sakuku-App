import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfilePageController extends GetxController {
  final RxString userFullName = "".obs;
  final RxString userEmail = "".obs;
  final currentUser = FirebaseAuth.instance.currentUser;

  void fetchFullName(String userId) async {
    if (userId != "") {
      var snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();
      if (snapshot.exists) {
        userFullName.value = snapshot.data()?['username'] ?? "Guest";
        userEmail.value = snapshot.data()?['email'] ?? "Guest";
      } else {
        userFullName.value = "Guest";
        userEmail.value = "Guest@gmail.com";
      }
    }
  }

  void signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAllNamed("/login");
    } catch (e) {
      print(e);
    }
  }
}
