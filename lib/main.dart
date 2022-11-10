import 'package:flutter/material.dart';
import 'package:xylophone/ui/welcome_ui.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeUI(),
    );
  }
}
// ui , pages, view, screen - stranisalar
// widgets

