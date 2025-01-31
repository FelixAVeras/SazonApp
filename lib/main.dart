import 'package:flutter/material.dart';
import 'package:sazonapp/presentation/pages/welcome_page.dart';

void main() {
  runApp(SazonApp());
}

class SazonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: WelcomeScreen(),
    );
  }
}
