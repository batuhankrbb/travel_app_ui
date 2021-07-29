import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/extensions/context_extension.dart';
import 'dart:math';

class CategoryCell extends StatelessWidget {
  const CategoryCell({Key? key}) : super(key: key);

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
            child: buildText(),
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
        "assets/images/mountain.png",
        fit: BoxFit.scaleDown,
      ),
      width: context.getWidth(0.2),
      height: context.getWidth(0.2),
    );
  }
}

Widget buildText() {
  return Padding(
    padding: EdgeInsets.only(top: 2),
    child: AutoSizeText(
      "Mountain",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 30),
    ),
  );
}
