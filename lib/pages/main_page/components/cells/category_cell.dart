import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../extensions/context_extension.dart';
import 'dart:math';

import '../../../../fake_data.dart';

class CategoryCell extends StatelessWidget {
   CategoryCell({Key? key, required this.category}) : super(key: key);

  Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 20,
            child: buildImage(context),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 10,
            child: buildText(category),
          )
        ],
      ),
    );
  }

  Widget buildImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: Image.asset(
        category.photo,
        fit: BoxFit.scaleDown,
      ),
      width: context.getWidth(0.2),
      height: context.getWidth(0.2),
    );
  }
}

Widget buildText(Category category) {

  return Padding(
    padding: EdgeInsets.only(top: 2),
    child: AutoSizeText(
      category.name,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 30),
    ),
  );
}
