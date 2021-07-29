import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'pages/main_page/main_page.dart';

void main() {
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (_) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "Travel App Interface",
      debugShowCheckedModeBanner: false,
    );
  }
}
