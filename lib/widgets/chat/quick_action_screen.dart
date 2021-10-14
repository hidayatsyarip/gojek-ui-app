import 'package:flutter/material.dart';

import '../../widgets/chat/quick_action_widget.dart';
import '../../widgets/chat/your_chat_widget.dart';

class QuickActionScreen extends StatelessWidget {
  const QuickActionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Quick actions",
                style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            QuickActionWidget(),
            SizedBox(
              height: 30.0,
            ),
            Text("Your chats",
                style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            YourChatWidget()
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        OutlinedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(width, 50.0)),
              side: MaterialStateProperty.all(BorderSide.none),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.green),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
            ),
            onPressed: () {},
            child: const Text("Start chatting"))
      ],
    );
  }
}
