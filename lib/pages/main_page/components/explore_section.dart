import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/fake_data.dart';
import 'package:travel_app_ui/extensions/context_extension.dart';
import 'package:travel_app_ui/pages/main_page/components/city_category_cell.dart';
import 'dart:math';

import 'package:travel_app_ui/pages/main_page/components/city_cell.dart';

class ExploreSection extends StatefulWidget {
  ExploreSection({Key? key}) : super(key: key);

  @override
  _ExploreSectionState createState() => _ExploreSectionState();
}

class _ExploreSectionState extends State<ExploreSection> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 8,
            child: buildExploreTitle(),
          ),
          Spacer(flex: 4),
          Expanded(
            flex: 7,
            child: buildCategoriesListView(),
          ),
          Spacer(flex: 3),
          Expanded(
            flex: 46,
            child: buildExploreListView(),
          ),
        ],
      ),
    );
  }

  AutoSizeText buildExploreTitle() {
    return AutoSizeText(
      "Explore Cities",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }

  ListView buildCategoriesListView() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CityCategoryCell(
          text: categories[index],
          isSelected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      },
      separatorBuilder: (_, __) {
        return SizedBox(
          width: 20,
        );
      },
      itemCount: categories.length,
    );
  }

  Widget buildExploreListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: CityCell(),
        );
      },
      itemCount: 10,
    );
  }
}
