import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:online_groceries/app/modules/home/controllers/home_controller.dart';
import 'package:online_groceries/app/modules/home/views/home_view.dart';
import 'package:online_groceries/common/color_extension.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
    Get.put(HomeController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: controller, children: [
        const HomeView(),
        Container(),
        Container(),
        Container(),
        Container(),
      ]),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 3, offset: Offset(0, -2))
            ]),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: TColor.primary,
              labelStyle: TextStyle(
                  color: TColor.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
              unselectedLabelColor: TColor.primaryText,
              unselectedLabelStyle: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
              tabs: const [
                Tab(
                  text: "Shop",
                  icon: Icon(FontAwesomeIcons.shop),
                ),
                Tab(
                  text: "Explore",
                  icon: Icon(FontAwesomeIcons.magnifyingGlass),
                ),
                Tab(
                  text: "Cart",
                  icon: Icon(FontAwesomeIcons.cartShopping),
                ),
                Tab(
                  text: "Favourite",
                  icon: Icon(FontAwesomeIcons.heart),
                ),
                Tab(
                  text: "Account",
                  icon: Icon(FontAwesomeIcons.user),
                )
              ]),
        ),
      ),
    );
  }
}
