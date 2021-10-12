import 'package:flutter/material.dart';

import '../data/data.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
            width: 200.0, height: 200.0, image: AssetImage(splashScreenLogo)),
      ),
    );
  }
}
