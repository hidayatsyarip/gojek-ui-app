import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

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
}
