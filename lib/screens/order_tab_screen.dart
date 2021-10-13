import 'package:flutter/material.dart';

import '../widgets/order/order_slider_widget.dart';

class OrderTabScreen extends StatelessWidget {
  const OrderTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      const OrderSliderWidget(),
      Center(
        child: Container(
          height: 300.0,
          margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: const Image(
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.cover,
                    image: AssetImage("images/illustrator.png")),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Haven't tried Gojek?",
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Our drivers will be happy to help you. Let's make your first order!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                    color: Colors.grey.shade600),
              )
            ],
          ),
        ),
      )
    ]));
  }
}
