import 'package:flutter/material.dart';

import '../widgets/chat/quick_action_screen.dart';

class ChatTabScreen extends StatelessWidget {
  const ChatTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SliverList(
        delegate: SliverChildListDelegate([
      MediaQuery.of(context).orientation == Orientation.portrait
          ? Container(
              height: (height - 120.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: const QuickActionScreen(),
            )
          : Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: const QuickActionScreen())
    ]));
  }
}
