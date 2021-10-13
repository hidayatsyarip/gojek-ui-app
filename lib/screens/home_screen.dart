import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_tab_screen.dart';
import '../screens/order_tab_screen.dart';
import '../screens/promo_tab_screen.dart';
import '../screens/chat_tab_screen.dart';
import '../controllers/home_controller.dart';
import '../widgets/home/home_tab_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeController());

    var screens = [
      const HomeTabScreen(),
      const PromoTabScreen(),
      const OrderTabScreen(),
      const ChatTabScreen(),
    ];

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const HomeTabBarWidget(),
          Obx(() => screens[homeController.currentIndex.value])
        ],
      ),
    );
  }
}
