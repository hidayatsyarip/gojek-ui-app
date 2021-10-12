import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojek_ui_app/screens/home_tab_screen.dart';

import '../controllers/home_controller.dart';
import '../widgets/home/home_tab_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeController());

    var screens = [
      const HomeTabScreen(),
      SliverToBoxAdapter(
        child: Center(
          child: Text("Promos"),
        ),
      ),
      SliverToBoxAdapter(
        child: Center(
          child: Text("Orders"),
        ),
      ),
      SliverToBoxAdapter(
        child: Center(
          child: Text("Chat"),
        ),
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeTabBarWidget(),
          Obx(() => screens[homeController.currentIndex.value])
        ],
      ),
    );
  }
}
