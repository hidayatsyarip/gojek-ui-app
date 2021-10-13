import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/gofood_plus_model.dart';
import '../data/data.dart';
import '../models/progress_model.dart';

class PromoController extends GetxController {
  var currentPromoIndex = 0.obs;

  var promoTitleList = ["All", "GoFood", "GoPlay", "GoSend", "GoTix"];

  var progressList = [
    ProgressModel(
        number: 0,
        label: "Vouchers",
        status: PromoStatus.Available,
        color: Colors.orange),
    ProgressModel(
        number: 0,
        label: "Subscriptions",
        status: PromoStatus.Active,
        color: Colors.purple),
    ProgressModel(
        number: 0,
        label: "Missions",
        status: PromoStatus.Progress,
        color: Colors.blue),
  ];

  var gofoodPlusBackground = "images/background.jpg";

  var gofoodPlusList = [
    GoFoodPlusModel(
        title: "Food, deliveries and streaming promopack",
        description: [
          "2x 10k GoFood vouchers",
          "2x 5k GoSend vouchers",
          "2x 10k GoTix vouchers"
        ],
        realPrice: 79000,
        discountPrice: 29000),
    GoFoodPlusModel(
        title: "Package delivery and streaming promo pack",
        description: [
          "7x 5k GoSend vouchers",
          "7 days GoPlay vouchers",
          "Unlimited streaming & download"
        ],
        realPrice: 64000,
        discountPrice: 29000)
  ];

  getProgressStatus(ProgressModel progressModel) {
    if (progressModel.status == PromoStatus.Available) {
      return "Available to use";
    } else if (progressModel.status == PromoStatus.Active) {
      return "Active now";
    } else {
      return "In progress";
    }
  }

  getCurrentPromoLabelColor(int index) {
    return currentPromoIndex.value == index
        ? Colors.white
        : Colors.grey.shade600;
  }

  getCurrentPromoDecoration(int index) {
    return currentPromoIndex.value == index
        ? BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(30.0))
        : BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(width: 1.0, color: Colors.grey));
  }
}
