import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  //TODO: Implement VerificationController

  final count = 0.obs;
  final txtOTP = TextEditingController();
  @override
  void onInit() {
    txtOTP.text = '';
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    txtOTP.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
