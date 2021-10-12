import 'package:flutter/material.dart';
import 'package:gojek_ui_app/widgets/home/home_payment_widget.dart';

import '../widgets/home/home_search_widget.dart';

class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(
            [const HomeSearchWidget(), const HomePaymentWidget()]));
  }
}
