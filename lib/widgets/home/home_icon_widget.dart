import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../models/circle_icon_model.dart';

class HomeIconWidget extends StatelessWidget {
  const HomeIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeController());

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Center(
        child: Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: homeController.homeIconList.asMap().entries.map((item) {
            CircleIconModel circleIconModel =
                homeController.homeIconList[item.key];

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 30.0,
                    child: Image(
                        width: 30.0, image: AssetImage(circleIconModel.icon)),
                    backgroundColor: circleIconModel.color),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  circleIconModel.label,
                  style: TextStyle(
                      color: Colors.grey.shade700, letterSpacing: 1.0),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
