import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojek_ui_app/models/quick_action_model.dart';

class ChatController extends GetxController {
  var currentQuickActionIndex = 0.obs;

  var quickActionList = [
    QuickActionModel(name: "Inbox", color: Colors.orange, icon: Icons.mail),
    QuickActionModel(
        name: "Help tickets", color: Colors.green, icon: Icons.question_answer),
    QuickActionModel(
        name: "New group",
        color: Colors.green,
        icon: Icons.supervisor_account_rounded),
    QuickActionModel(
        name: "Split bill", color: Colors.blue, icon: Icons.call_split),
    QuickActionModel(name: "Pay", color: Colors.blue, icon: Icons.payment),
  ];
}
