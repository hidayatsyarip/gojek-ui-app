import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojek_ui_app/controllers/promo_controller.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var promoController = Get.put(PromoController());

    _buildProgressCard() {
      List<Widget> progressList = [];

      double cardWidth = width / 3.6;

      for (var item in promoController.progressList) {
        progressList.add(Card(
          child: Container(
            width: cardWidth,
            height: 120.0,
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.number.toString(),
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.arrow_forward_ios, size: 16.0)
                  ],
                ),
                Text(
                  item.label,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  promoController.getProgressStatus(item),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(letterSpacing: 1.0, fontSize: 12.0),
                ),
                Container(
                    width: double.infinity, height: 5.0, color: item.color)
              ],
            ),
          ),
        ));
      }

      return progressList;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        spacing: 5.0,
        runSpacing: 5.0,
        children: _buildProgressCard(),
      ),
    );
  }
}
