import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../../controllers/home_controller.dart';

class HomeTabBarWidget extends StatelessWidget {
  const HomeTabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeController());

    return SliverToBoxAdapter(
      child: Container(
        color: Colors.green.shade700,
        height: 120.0,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: Container(
            height: 50.0,
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            margin: const EdgeInsets.only(top: 50.0),
            decoration: BoxDecoration(
                color: Colors.green.shade900,
                borderRadius: BorderRadius.circular(30.0)),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: tabBarList.length,
                itemBuilder: (context, index) {
                  String tabName = tabBarList[index];

                  return GestureDetector(
                    onTap: () {
                      homeController.currentIndex.value = index;
                    },
                    child: Obx(() => Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        margin: const EdgeInsets.only(right: 5.0),
                        child: Center(
                          child: Text(
                            tabName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: homeController
                                    .getSliderButtonTextColor(index)),
                          ),
                        ),
                        decoration: homeController.getBoxDecoration(index))),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
