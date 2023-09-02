import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common_widget/category_cell.dart';
import 'package:online_groceries/common_widget/product_cell.dart';
import 'package:online_groceries/common_widget/selection_view.dart';

import '../controllers/home_controller.dart';

List listArr = [
  {
    'name': 'Beef Bone',
    'icon': 'assets/img/product1.jpg',
    'qty': '1',
    'unit': "kg, Prices",
    'price': "\$4.99"
  },
  {
    'name': 'Fresh Apples',
    'icon': 'assets/img/product2.jpg',
    'qty': '3',
    'unit': "pieces",
    'price': "\$2.49",
  },
  {
    'name': 'Orange Juice',
    'icon': 'assets/img/product3.jpg',
    'qty': '2',
    'unit': "liters",
    'price': "\$3.99",
  },
  {
    'name': 'Whole Chicken',
    'icon': 'assets/img/product4.jpg',
    'qty': '1',
    'unit': "kg, Prices",
    'price': "\$9.99",
  },
  {
    'name': 'Bananas',
    'icon': 'assets/img/product5.jpg',
    'qty': '5',
    'unit': "pieces",
    'price': "\$1.29",
  },
  {
    'name': 'Milk',
    'icon': 'assets/img/product6.jpg',
    'qty': '1',
    'unit': "liter",
    'price': "\$1.99",
  },
  {
    'name': 'Eggs',
    'icon': 'assets/img/product7.jpg',
    'qty': '12',
    'unit': "pieces",
    'price': "\$2.79",
  },
  {
    'name': 'Broccoli',
    'icon': 'assets/img/product8.jpg',
    'qty': '2',
    'unit': "pieces",
    'price': "\$1.49",
  },
  {
    'name': 'Salmon Fillet',
    'icon': 'assets/img/product9.jpg',
    'qty': '0.5',
    'unit': "kg, Prices",
    'price': "\$11.99",
  },
  {
    'name': 'Mixed Nuts',
    'icon': 'assets/img/product10.jpg',
    'qty': '0.25',
    'unit': "kg, Prices",
    'price': "\$7.49",
  },
];

List<Map<String, dynamic>> categoryList = [
  {
    'name': 'Fruits',
    'icon': 'assets/img/fruit_icon.png',
    'color': Colors.green,
  },
  {
    'name': 'Vegetables',
    'icon': 'assets/img/vegetable_icon.png',
    'color': Colors.orange,
  },
  {
    'name': 'Dairy',
    'icon': 'assets/img/dairy_icon.png',
    'color': Colors.blue,
  },
  {
    'name': 'Meat',
    'icon': 'assets/img/meat_icon.png',
    'color': Colors.red,
  },
  {
    'name': 'Bakery',
    'icon': 'assets/img/bakery_icon.png',
    'color': Colors.brown,
  },
  // Add more categories as needed
];

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: null,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/new_logo.png',
                        width: 48,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(FontAwesomeIcons.locationArrow),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Bangkaew, Nakhonsawan",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: TColor.primaryText),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                          color: TColor.bgTextField,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        onTapOutside: (_) => FocusScope.of(context).unfocus(),
                        controller: controller.txtSearch,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                            prefixIcon:
                                const Icon(FontAwesomeIcons.magnifyingGlass),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            hintText: "Search Store",
                            hintStyle: TextStyle(
                                color: TColor.placeholder, fontSize: 17)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                        width: double.maxFinite,
                        height: 115,
                        decoration: BoxDecoration(
                            color: TColor.bgTextField,
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(
                          'assets/img/banner_top.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                  SectionView(
                    title: "Exclusive Offer",
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 216,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        itemCount: listArr.length,
                        itemBuilder: (context, index) {
                          var pObj = listArr[index] as Map? ?? {};
                          return ProductCell(
                              pObj: pObj, onPressed: () {}, onCart: () {});
                        }),
                  ),
                  SectionView(
                    title: "Best Setting",
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 216,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        itemCount: listArr.length,
                        itemBuilder: (context, index) {
                          var pObj = listArr[index] as Map? ?? {};
                          return ProductCell(
                              pObj: pObj, onPressed: () {}, onCart: () {});
                        }),
                  ),
                  SectionView(
                    title: "Groceries",
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 102,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        itemCount: categoryList.length,
                        itemBuilder: (context, index) {
                          var pObj = categoryList[index];
                          return CategoryCell(pObj: pObj, onPressed: () {});
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              )),
        )));
  }
}
