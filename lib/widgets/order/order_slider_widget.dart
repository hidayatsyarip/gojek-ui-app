import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/order_controller.dart';

class OrderSliderWidget extends StatelessWidget {
  const OrderSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orderController = Get.put(OrderController());

    return Container(
      height: 50.0,
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: orderController.orderList.length,
          itemBuilder: (context, index) {
            return Obx(() => GestureDetector(
                  onTap: () {
                    orderController.currentOrderIndex.value = index;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    decoration: orderController.getOrderDecoration(index),
                    child: Center(
                      child: Text(
                        orderController.orderList[index],
                        style: orderController.getOrderFontStyle(index),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ));
          }),
    );
  }
}
