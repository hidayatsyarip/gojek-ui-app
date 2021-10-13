import 'package:flutter/material.dart';

class PromoCodeWidget extends StatelessWidget {
  const PromoCodeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(30.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Get a promo code? Enter here",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800,
                fontSize: 16.0),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20.0,
          )
        ],
      ),
    );
  }
}
