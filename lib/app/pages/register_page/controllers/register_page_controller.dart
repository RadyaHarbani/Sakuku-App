import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';

class RegisterPageController extends GetxController {
  final formField = GlobalKey<FormState>();
  TextEditingController? cUsernameSignUp;
  TextEditingController? cEmailSignUp;
  TextEditingController? cPasswordSignUp;
  TextEditingController? cConfirmPasswordSignUp;
  RxBool isVisiblePass = true.obs;
  RxBool isVisibleConfirm = true.obs;
  RxBool isEmailSignUp = false.obs;
  RxBool isGoogleSignUp = false.obs;
  RxBool isUsernameGoogleSignUp = false.obs;
  RxBool isUsernameEmailSignUp = false.obs;

  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(email);
  }

  @override
  void onInit() {
    super.onInit();
    cUsernameSignUp = new TextEditingController();
    cEmailSignUp = new TextEditingController();
    cPasswordSignUp = new TextEditingController();
    cConfirmPasswordSignUp = new TextEditingController();
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      isEmailSignUp.value = true;
      isUsernameEmailSignUp.value = true;

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: cEmailSignUp!.text,
        password: cPasswordSignUp!.text,
      );

      Get.snackbar("Selamat", "Akun Anda Berhasil Dibuat");
      Get.offAllNamed(Routes.HOME_PAGE);

      isEmailSignUp.value = false;
    } catch (e) {
      isEmailSignUp.value = false;
      isUsernameEmailSignUp.value = false;

      Get.snackbar("Maaf...", "Akun Anda Gagal Dibuat");
    }
  }

  Future<void> signUpWithGoogle() async {
    try {
      isGoogleSignUp.value = true;
      isUsernameGoogleSignUp.value = true;

      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      Get.snackbar(
        "Haloo...👋",
        "Berhasil Login Sebagai " + googleUser.displayName.toString(),
      );
      
      Get.offAllNamed(Routes.HOME_PAGE);
      isGoogleSignUp.value = false;
    } catch (e) {
      isGoogleSignUp.value = false;
      isUsernameGoogleSignUp.value = false;

      print('Google Sign-In error: $e');
      Get.snackbar("Waduhh:(", "Kayaknya Jaringannya Lagi Gangguan Nihh");

      isGoogleSignUp.value = true;
    }
  }
}
