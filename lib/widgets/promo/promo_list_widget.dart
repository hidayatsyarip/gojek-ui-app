import 'package:flutter/material.dart';
import 'package:get/get.dart';

import "../../controllers/promo_controller.dart";

class PromoListWidget extends StatelessWidget {
  const PromoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var promoController = Get.put(PromoController());

    return Container(
      height: 40.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: promoController.promoTitleList.length,
          itemBuilder: (context, index) {
            String promo = promoController.promoTitleList[index];

            return Obx(() => GestureDetector(
                  onTap: () {
                    promoController.currentPromoIndex.value = index;
                  },
                  child: Container(
                      child: Center(
                        child: Text(
                          promo,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: promoController
                                  .getCurrentPromoLabelColor(index)),
                        ),
                      ),
                      margin: const EdgeInsets.only(right: 10.0),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration:
                          promoController.getCurrentPromoDecoration(index)),
                ));
          }),
    );
  }
}
