import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  var currentOrderIndex = 0.obs;

  var orderList = ["History", "Ongoing"];

  getOrderDecoration(int currentIndex) {
    return currentOrderIndex.value == currentIndex
        ? BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 3.0, color: Colors.green.shade600)))
        : const BoxDecoration();
  }

  getOrderFontStyle(int index) {
    return currentOrderIndex.value == index
        ? const TextStyle(fontWeight: FontWeight.bold)
        : const TextStyle();
  }
}
