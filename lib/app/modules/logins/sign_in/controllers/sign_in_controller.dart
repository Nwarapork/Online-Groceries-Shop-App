import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController

  final count = 0.obs;
  final txtMobils = TextEditingController();
  final countryPicker = const FlCountryCodePicker();
  final countryCode =
     const CountryCode(name: 'Thailand', code: 'TH', dialCode: '+66 ').obs;
  
  @override
  void onInit() {
    txtMobils.text = '';
    super.onInit();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {
    txtMobils.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
