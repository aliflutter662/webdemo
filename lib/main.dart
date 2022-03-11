import 'package:flutter/material.dart';
import 'package:web_demo/pages/home_page.dart';
import 'package:web_demo/pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(),
    );
  }
}
