import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/main_page/components/categories_section.dart';
import 'package:travel_app_ui/pages/main_page/components/custom_textfield.dart';
import 'package:travel_app_ui/pages/main_page/components/explore_section.dart';
import 'package:travel_app_ui/pages/main_page/components/profile_header.dart';
import 'package:travel_app_ui/extensions/context_extension.dart';

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
        child: Container(
          padding: EdgeInsets.only(left: context.getWidth(0.06)),
          child: Column(
            children: [
              Expanded(
                flex: 21,
                child: buildTopSection(),
              ),
              Expanded(
                flex: 26,
                child: ExploreSection(),
              ),
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 11,
                child: CategoriesSection(),
              ),
              Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTopSection() {
    return Container(
      padding: EdgeInsets.only(
        right: context.getWidth(0.07),
      ),
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
            flex: 4,
          ),
        ],
      ),
    );
  }
}
