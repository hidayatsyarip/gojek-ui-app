import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojek_ui_app/models/card_ads_model.dart';

import '../models/circle_icon_model.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  var pageIndex = 0.obs;

  var pageViewList = [
    {
      "label": "gopaylater",
      "description": "Order bow, pay by the end of the month!"
    },
    {"label": "gopay", "description": "Payments made easy with GoPay!"}
  ];

  var homeIconList = [
    CircleIconModel(
        label: "GoRide",
        icon: "images/icon_1.png",
        color: Colors.green.shade600),
    CircleIconModel(
        label: "GoCar",
        icon: "images/icon_2.png",
        color: Colors.green.shade600),
    CircleIconModel(
        label: "GoFood", icon: "images/icon_3.png", color: Colors.red.shade400),
    CircleIconModel(
        label: "GoSend",
        icon: "images/icon_4.png",
        color: Colors.green.shade600),
    CircleIconModel(
        label: "GoMart", icon: "images/icon_5.png", color: Colors.red.shade400),
    CircleIconModel(
        label: "GoPulsa",
        icon: "images/icon_6.png",
        color: const Color(0xFF01aed6)),
    CircleIconModel(
        label: "Check In",
        icon: "images/icon_7.png",
        color: const Color(0xFF0097ce)),
    CircleIconModel(
        label: "More", icon: "images/icon_8.png", color: Colors.grey.shade300),
  ];

  var homeAdsList = [
    CardAdsModel(
        title: "Became an Anak Sultan, join GoClub!",
        description:
            "Click to join now & enjoy priority booking, free surge fee, cashback and other rewards for free!",
        image: "images/ads_1.jpg"),
    CardAdsModel(
        title: "Check in PeduliLindungi on Gojek",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
        image: "images/ads_2.jpg")
  ];

  getSliderButtonColor(int selectedIndex) {
    return selectedIndex == currentIndex.value
        ? Colors.white
        : Colors.green.shade900;
  }

  getSliderButtonTextColor(int selectedIndex) {
    return selectedIndex == currentIndex.value
        ? Colors.green.shade900
        : Colors.white;
  }

  getBoxDecoration(int selectedIndex) {
    return selectedIndex == currentIndex.value
        ? BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30.0))
        : const BoxDecoration();
  }

  getHomeIconBackgroundColor(String type) {
    print("type: $type");

    // if (type == "TYPE_1") {
    //   return Colors.green.shade600;
    // } else if (type == "TYPE_2") {
    //   return Colors.red.shade300;
    // } else {
    //   return Colors.blue.shade600;
    // }
  }
}
