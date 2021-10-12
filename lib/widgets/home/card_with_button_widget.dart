import 'package:flutter/material.dart';

class CardWithButtonWidget extends StatelessWidget {
  const CardWithButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "goclub",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.grey.shade800,
                        letterSpacing: 1.2),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Our new loyalty program",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 14.0, letterSpacing: 1.0),
                  )
                ],
              )),
              const SizedBox(
                width: 15.0,
              ),
              Container(
                child: const Text(
                  "Join for free",
                  style: TextStyle(color: Colors.white),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(30.0)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
