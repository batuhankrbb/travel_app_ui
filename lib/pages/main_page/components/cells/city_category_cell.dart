import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class CityCategoryCell extends StatefulWidget {
  CityCategoryCell(
      {Key? key,
      required this.text,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  _CityCategoryCellState createState() => _CityCategoryCellState();

  final String text;
  bool isSelected;
  VoidCallback onTap;
}

class _CityCategoryCellState extends State<CityCategoryCell> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: buildText(),
      onTap: widget.onTap,
    );
  }

  AutoSizeText buildText() {
    return AutoSizeText(
      widget.text,
      style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w500,
          color: widget.isSelected ? Colors.black : Colors.grey),
    );
  }
}
