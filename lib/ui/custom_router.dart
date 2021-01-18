

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wanna_rich/ui/splash_view.dart';

class CustomRouter{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashView());
    }
  }
}