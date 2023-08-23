import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_groceries/common/color_extension.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        fontFamily: "Kanit",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary)
      ),
    ),
  );
}
