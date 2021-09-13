import 'package:flutter/material.dart';
import 'package:online_course/pages/screens/detail_page.dart';
import 'package:online_course/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Main(),
        '/detail': (context) => Detail(),
      },
    );
  }
}
