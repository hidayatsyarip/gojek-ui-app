import 'package:flutter/material.dart';
import 'package:gojek_ui_app/widgets/promo/gofood_plus_widget.dart';

import '../widgets/promo/promo_code_widget.dart';
import '../widgets/promo/promo_list_widget.dart';
import '../widgets/promo/progress_widget.dart';
import '../widgets/home/card_with_button_widget.dart';

class PromoTabScreen extends StatelessWidget {
  const PromoTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
        margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
        child: const CardWithButtonWidget(),
      ),
      const ProgressWidget(),
      const PromoCodeWidget(),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: const Text(
          "Promos you can't resist",
          style: TextStyle(
              fontSize: 20.0, letterSpacing: 1.2, fontWeight: FontWeight.bold),
        ),
      ),
      const PromoListWidget(),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "PLUS",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Save more with GoFood Plus",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      const GoFoodPlusWidget()
    ]));
  }
}
