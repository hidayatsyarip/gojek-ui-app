import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/chat_controller.dart';
import '../../models/quick_action_model.dart';

class QuickActionWidget extends StatelessWidget {
  const QuickActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var chatController = Get.put(ChatController());

    return Container(
        height: 80.0,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: chatController.quickActionList.length,
            itemBuilder: (context, index) {
              QuickActionModel quickActionModel =
                  chatController.quickActionList[index];

              return Container(
                  height: 80.0,
                  margin: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: quickActionModel.color,
                        child: Icon(quickActionModel.icon, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        quickActionModel.name,
                        style: TextStyle(color: Colors.grey.shade700),
                      )
                    ],
                  ));
            }));
  }
}
