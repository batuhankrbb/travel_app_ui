import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/fake_data.dart';
import 'package:travel_app_ui/pages/main_page/components/cells/category_cell.dart';
import 'package:travel_app_ui/extensions/context_extension.dart';

class CategoriesSection extends StatefulWidget {
  CategoriesSection({Key? key}) : super(key: key);

  @override
  _CategoriesSectionState createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: buildCategoriesText(),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 10,
            child: buildCategoriesListView(),
          ),
        ],
      ),
    );
  }

  Widget buildCategoriesText() {
    return Container(
      alignment: Alignment.centerLeft,
      child: AutoSizeText(
        "Categories",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget buildCategoriesListView() {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCell(category: categories[index],);
        },
        separatorBuilder: (_, __) {
          return SizedBox(
            width: context.getWidth(0.05),
          );
        },
        itemCount: categories.length);
  }
}

/*
AutoSizeText(
            "Categories",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              
            ),
          )
*/