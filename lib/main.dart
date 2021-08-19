import 'package:flutter/material.dart';
import 'package:graduation_project/loogintest/loogintest_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'graduation project',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoogintestWidget(),
    );
  }
}
