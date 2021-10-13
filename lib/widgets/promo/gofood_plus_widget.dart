import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controllers/promo_controller.dart';

class GoFoodPlusWidget extends StatelessWidget {
  const GoFoodPlusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var promoController = Get.put(PromoController());

    final numberFormat = NumberFormat("#,##0.00", "id_ID");

    _buildGofoodPlusDescription(List<String> description) {
      List<Widget> descriptionList = [];

      for (var item in description) {
        descriptionList.add(Row(
          children: [
            Container(
                width: 5.0,
                height: 5.0,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30.0))),
            const SizedBox(
              width: 10.0,
            ),
            Text(item)
          ],
        ));

        descriptionList.add(const SizedBox(
          height: 8.0,
        ));
      }

      var result = Column(
        children: descriptionList,
      );

      return result;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        children: promoController.gofoodPlusList.asMap().entries.map((item) {
          return Container(
            width: double.infinity,
            height: 300.0,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(bottom: 20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(promoController.gofoodPlusBackground)),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                      color: Colors.black12)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.value.title,
                  style: const TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
                _buildGofoodPlusDescription(item.value.description),
                const Divider(
                  thickness: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rp ${numberFormat.format(item.value.discountPrice)}",
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Rp ${numberFormat.format(item.value.realPrice)}",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          "Know Me",
                          style: TextStyle(
                              color: Colors.green.shade600,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green.shade600, width: 2.0),
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
