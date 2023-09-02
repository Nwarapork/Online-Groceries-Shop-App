import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final count = 0.obs;
  final txtUsername = TextEditingController();
  final txtEmail = TextEditingController();
  final txtPassword = TextEditingController();
  final isShow = true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
