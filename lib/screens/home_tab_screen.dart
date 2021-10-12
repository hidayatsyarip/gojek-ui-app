import 'package:flutter/material.dart';
import 'package:gojek_ui_app/widgets/home/card_with_image_widget.dart';

import '../widgets/home/card_with_button_widget.dart';
import '../widgets/home/home_icon_widget.dart';
import '../widgets/home/home_payment_widget.dart';
import '../widgets/home/home_search_widget.dart';

class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      const HomeSearchWidget(),
      const HomePaymentWidget(),
      const HomeIconWidget(),
      const CardWithButtonWidget(),
      CardWithImageWidget()
    ]));
  }
}
