import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class CardWithImageWidget extends StatelessWidget {
  const CardWithImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeController());

    _buildCardItems() {
      List<Widget> cardItems = [];

      for (var item in homeController.homeAdsList) {
        cardItems.add(SizedBox(
          height: 300.0,
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0)),
                    child: Image(
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 150.0,
                        image: AssetImage(item.image)),
                  ),
                  const SizedBox(height: 5.0),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                    child: Text(
                      item.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: const TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: Text(
                      item.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: 14.0,
                          letterSpacing: 1.0,
                          color: Colors.grey.shade700),
                    ),
                  )),
                ],
              )),
        ));

        cardItems.add(const SizedBox(
          height: 10.0,
        ));
      }

      return cardItems;
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        children: _buildCardItems(),
      ),
    );
  }
}
