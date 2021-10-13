import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/chat_controller.dart';
import '../models/quick_action_model.dart';

class ChatTabScreen extends StatelessWidget {
  const ChatTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var chatController = Get.put(ChatController());

    return SliverList(
        delegate: SliverChildListDelegate([
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: const Text(
                    "Quick actions",
                    style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 70.0,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: chatController.quickActionList.length,
                      itemBuilder: (context, index) {
                        QuickActionModel quickActionModel =
                            chatController.quickActionList[index];

                        return Container(
                          margin: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20.0,
                                backgroundColor: quickActionModel.color,
                                child: Icon(quickActionModel.icon,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                quickActionModel.name,
                                style: TextStyle(color: Colors.grey.shade700),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: const Text(
                    "Your chats",
                    style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        child: const Icon(
                          Icons.chat_bubble,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "No chats yet",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Order-related messages, conversations with friends and updates from Jeklin, our chat bot, appear here.",
                            style: TextStyle(
                                letterSpacing: 1.0,
                                color: Colors.grey.shade700),
                          )
                        ],
                      )),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 50.0,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Center(
                child: Text(
                  "Start chatting",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30.0)),
            )
          ],
        ),
      )
    ]));
  }
}
