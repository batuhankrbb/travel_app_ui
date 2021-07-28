import 'package:flutter/material.dart';

class ExploreSection extends StatefulWidget {
  ExploreSection({Key? key}) : super(key: key);

  @override
  _ExploreSectionState createState() => _ExploreSectionState();
}

class _ExploreSectionState extends State<ExploreSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Explore Section",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.green[200],
    );
  }
}