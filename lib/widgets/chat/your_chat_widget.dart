import 'package:flutter/material.dart';

class YourChatWidget extends StatelessWidget {
  const YourChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        children: [
          Container(
              width: 100.0,
              height: 100.0,
              child: const Icon(
                Icons.chat_bubble_outline,
                size: 50.0,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(30.0))),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("No chats yet",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2)),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                  "Order-related messages, conversations with friends and updates from Jeklin, our chat bot, appear here.",
                  style: TextStyle(
                      letterSpacing: 1.0, color: Colors.grey.shade700))
            ],
          ))
        ],
      ),
    );
  }
}
