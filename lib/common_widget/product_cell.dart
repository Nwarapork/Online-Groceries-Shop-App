import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_groceries/common/color_extension.dart';

class ProductCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  final VoidCallback onCart;
  const ProductCell(
      {super.key,
      required this.pObj,
      required this.onPressed,
      required this.onCart});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 180,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: TColor.placeholder.withOpacity(0.5), width: 1),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  pObj['icon'],
                  width: 100,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const Spacer(),
            Text(
              pObj['name'],
              style: TextStyle(
                  color: TColor.darkGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "${pObj['qty']} ${pObj['unit']}",
              style: TextStyle(
                  color: TColor.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${pObj['price']}",
                  style: TextStyle(
                      color: TColor.darkGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                    onTap: onCart,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: TColor.primary,
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: const Icon(FontAwesomeIcons.plus),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
