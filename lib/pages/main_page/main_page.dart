import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/main_page/components/categories_section.dart';
import 'package:travel_app_ui/pages/main_page/components/custom_textfield.dart';
import 'package:travel_app_ui/pages/main_page/components/explore_section.dart';
import 'package:travel_app_ui/pages/main_page/components/profile_header.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 7,
              child: ProfileHeader(),
            ),
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 6,
              child: CustomTextField(),
            ),
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 24,
              child: ExploreSection(),
            ),
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 10,
              child: CategoriesSection(),
            ),
            Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
