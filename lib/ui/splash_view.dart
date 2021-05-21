import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:wanna_rich/ui/home_view.dart';
import 'package:wanna_rich/utils/app_colors.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: buildSplashScreen(),
      ),
    );
  }

  buildSplashScreen() {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: HomeView(),
      title: new Text(
        "WannaRich",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      image: new Image.asset(
        'assets/icons/ic_wallet.png',
        height: 100,
        width: 100,
      ),
      backgroundColor: Colors.blueAccent,
      loaderColor: Colors.white,
      loadingText: Text(
        'A wealth management application',
        style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
      ),
      photoSize: 100.0,
    );
  }
}
