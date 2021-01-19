import 'package:flutter/material.dart';
import 'package:wanna_rich/ui/custom_router.dart';
import 'package:wanna_rich/utils/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wanna Rich",
      theme: ThemeData(
        primaryColor: backgroundColor,
        accentColor: Colors.blue
      ),
      initialRoute: '/',
      onGenerateRoute: CustomRouter.generateRoute,
    );
  }
}
