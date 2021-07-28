import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/main_page/main_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      title: "Travel App Interface",
      debugShowCheckedModeBanner: false,
    );
  }
}