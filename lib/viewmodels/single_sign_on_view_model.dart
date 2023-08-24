import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:online_groceries/common/color_extension.dart';

class SingleSignOn {
  final String title;
  final IconData icon;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const SingleSignOn(
      {required this.title,
      required this.icon,
      required this.backgroundColor,
      required this.onPressed});
}

class SingleSignOnViewModel {
  List<SingleSignOn> get items => <SingleSignOn>[
        SingleSignOn(
            icon: FontAwesomeIcons.facebookF,
            backgroundColor: TColor.facebookBlueColor,
            onPressed: () => Get.toNamed('/verification'),
            title: 'Continue with Facebook'),
        SingleSignOn(
            icon: FontAwesomeIcons.google,
            backgroundColor: TColor.googleRedColor,
            onPressed: () => Get.toNamed('/verification'),
            title: 'Continue with Gmail'),
      ];
}
