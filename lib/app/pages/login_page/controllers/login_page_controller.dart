import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageController extends GetxController {
  final formField = GlobalKey<FormState>();
  TextEditingController? cEmailSignIn;
  TextEditingController? cPasswordSignIn;
  RxBool isVisibleSignIn = true.obs;
  RxBool isEmailSignIn = false.obs;
  RxBool isGoogleSignIn = false.obs;
  RxBool isUsernameGoogleSignIn = false.obs;
  RxBool isUsernameEmailSignIn = false.obs;

  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(email);
  }

  @override
  void onInit() {
    super.onInit();
    cEmailSignIn = new TextEditingController();
    cPasswordSignIn = new TextEditingController();
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      isEmailSignIn.value = true;
      isUsernameEmailSignIn.value = true;
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: cEmailSignIn!.text,
        password: cPasswordSignIn!.text,
      );
      // await writeToSharedPreference();
      // await fetchUsernameFromFirestore(userCredential.user!.uid);
      Get.snackbar("Selamat", "Login Berhasil Sebagai" + cEmailSignIn!.text);
      Get.offAllNamed(Routes.NAVIGATOR_COMPONENT);
      isEmailSignIn.value = false;
    } catch (e) {
      isEmailSignIn.value = false;
      isUsernameEmailSignIn.value = false;
      print('Login error: $e');
      Get.snackbar("Yahh:(", "Coba Periksa Lagi Email dan Password Anda");
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      isGoogleSignIn.value = true;
      isUsernameGoogleSignIn.value = true;
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      Get.snackbar(
        "Haloo...👋",
        "Login Sebagai " + googleUser.displayName.toString(),
      );
      Get.offAllNamed(Routes.NAVIGATOR_COMPONENT);
      isGoogleSignIn.value = false;
    } catch (e) {
      isGoogleSignIn.value = false;
      isUsernameGoogleSignIn.value = false;
      print('Google Sign-In error: $e');
      Get.snackbar("Waduhh:(", "Kayaknya Jaringannya Lagi Gangguan Nihh");
      isGoogleSignIn.value = true;
    }
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN_PAGE);
  }

  // Future<void> fetchUsernameFromFirestore(String? uid) async {
  // try {
  //   if (uid != null) {
  //     final snapshot =
  //         await FirebaseFirestore.instance.collection('users').doc(uid).get();
  //     if (snapshot.exists) {
  //       cUsernameSignIn?.text = snapshot.get('username') ?? '';
  //     }
  //   }
  // } catch (e) {
  //   print('Error fetching username from Firestore: $e');
  // }

  // }

  // Future fetch() async {
  //   final firebaseUser = await FirebaseAuth.instance.currentUser;
  //   if (firebaseUser != null) {
  //     await FirebaseFirestore.instance
  //         .collection("users")
  //         .doc(firebaseUser.uid)
  //         .get()
  //         .then((value) {
  //       cUsernameSignIn?.text = value.data()!['username'];
  //     }).catchError((e) {
  //       print(e);
  //     });
  //   }
  // }

  // Future<void> writeToSharedPreference() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setBool("isLogin", true);
  //   prefs.setString("email", cEmailSignIn!.text);
  //   Get.offAllNamed(Routes.NAVIGATOR_COMPONENT);
  // }
}
