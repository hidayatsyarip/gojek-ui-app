import 'package:flutter/material.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            cursorColor: Colors.grey.shade600,
            decoration: InputDecoration(
                hintText: "Find services, food or places",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                prefixIcon:
                    Icon(Icons.search, size: 30.0, color: Colors.grey.shade600),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(30.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(30.0)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(30.0))),
          )),
          const SizedBox(
            width: 20.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.green.shade800,
            child: const Icon(Icons.account_circle, color: Colors.white),
          )
        ],
      ),
    );
  }
}
