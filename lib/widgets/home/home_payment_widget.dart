import 'package:flutter/material.dart';

import '../../data/data.dart';

class HomePaymentWidget extends StatelessWidget {
  const HomePaymentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: const Color(0xFF0081a0),
          borderRadius: BorderRadius.circular(30.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 3.0,
                height: 15.0,
                color: Colors.grey.shade400,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                width: 3.0,
                height: 15.0,
                color: Colors.grey.shade100,
              )
            ],
          ),
          Container(
            width: 130.0,
            height: 80.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: const Color(0xFFb7dce5),
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "gopay",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      letterSpacing: 1.2),
                ),
                Text("Payments made easy with GoPay!",
                    style: TextStyle(
                        fontSize: 12.0,
                        letterSpacing: 1.0,
                        color: Colors.grey.shade800))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: paymentButtonLabelList.asMap().entries.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 25.0,
                        height: 25.0,
                        child: Icon(paymentButtonIconList[item.key],
                            size: 20.0, color: const Color(0xFF0081a0)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0))),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      item.value,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
