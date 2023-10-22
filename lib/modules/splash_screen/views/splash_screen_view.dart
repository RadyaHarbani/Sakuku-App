import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/modules/splash_screen/controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SplashScreenView'),
      ),
    );
  }
}
