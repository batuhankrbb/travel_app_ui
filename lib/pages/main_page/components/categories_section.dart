import 'package:flutter/material.dart';

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
      child: Text(
        "Categories Section",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.purple[200],
    );
  }
}
