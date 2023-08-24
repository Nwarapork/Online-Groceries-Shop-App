import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/app/modules/logins/welcome/views/welcome_view.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    fireOpenApp();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fireOpenApp() async {
    await Future.delayed(const Duration(seconds: 3));
    startApp();
  }

  void startApp() {
    Get.toNamed('/welcome');
  }

  void increment() => count.value++;
}
