import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: null,
        body: Column(
          children: [
            Expanded(
              child: Image.asset(
                "assets/img/splash_logo.png",
                height: media.height,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ));
  }
}
