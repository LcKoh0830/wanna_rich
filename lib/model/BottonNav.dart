import 'package:flutter/material.dart';

class BottomNav {
  const BottomNav(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<BottomNav> allBottomNav = <BottomNav> [
  BottomNav('Home', Icons.home, Colors.teal),
  BottomNav('Business', Icons.business, Colors.cyan),
  BottomNav('School', Icons.school, Colors.orange),
  BottomNav('Flight', Icons.flight, Colors.blue),
];