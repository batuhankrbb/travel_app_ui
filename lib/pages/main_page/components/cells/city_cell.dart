import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/extensions/context_extension.dart';
import 'package:travel_app_ui/pages/main_page/components/like_button.dart';

class CityCell extends StatefulWidget {
  CityCell({Key? key}) : super(key: key);

  @override
  _CityCellState createState() => _CityCellState();
}

class _CityCellState extends State<CityCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      width: context.getWidth(0.4),
      padding: EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 20,
            child: buildPhoto(),
          ),
          Spacer(),
          Expanded(
            flex: 4,
            child: buildNameText(),
          ),
          Expanded(
            flex: 3,
            child: buildCountryText(),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget buildPhoto() {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: buildBoxDecoration(),
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 4) +
          EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/colesseum.jpg",
              fit: BoxFit.fill,
            ),
          ),
          LikeButton(
            size: context.getWidth(0.08),
          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(0, 4),
            spreadRadius: 2,
            blurRadius: 6),
      ],
    );
  }

  Widget buildNameText() {
    return Padding(
      padding: EdgeInsets.all(3),
      child: AutoSizeText(
        "Colosseum",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
      ),
    );
  }

  Widget buildCountryText() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.place,
                color: Colors.grey,
                size: context.getWidth(0.04),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 25,
            child: AutoSizeText(
              "Rome",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
