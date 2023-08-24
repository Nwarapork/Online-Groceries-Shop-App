import 'package:flutter/material.dart';
import 'package:online_groceries/common/color_extension.dart';

// no icon
class RoundButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPressed;
  const RoundButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(19),
      ),
      minWidth: double.maxFinite,
      elevation: 0.2,
      color: TColor.primary,
      child: Text(
        title,
        style: TextStyle(
            color: color.withOpacity(0.7),
            fontSize: 28,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color bgColor;
  final VoidCallback onPressed;
  const RoundIconButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.bgColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return //ElevatedButton.icon(onPressed: onPressed, icon: Icon(icon), label: Text(title));
        MaterialButton(
      onPressed: onPressed,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
      minWidth: double.maxFinite,
      elevation: 0.1,
      color: bgColor,
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
