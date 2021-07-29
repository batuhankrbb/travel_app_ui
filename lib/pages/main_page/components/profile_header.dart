import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: buildText(),
          ),
          Spacer(),
          Expanded(
            flex: 2,
            child: buildProfilePhoto(),
          ),
        ],
      ),
    );
  }

  Widget buildText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          child: AutoSizeText(
            "Where do",
            style: TextStyle(
                fontSize: 27, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ),
        Flexible(
          flex: 2,
          child: AutoSizeText(
            "you want to go?",
            style: TextStyle(
                fontSize: 27, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget buildProfilePhoto() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(6),
      child: ClipOval(
        child: Image.asset(
          "assets/images/random_person.jpg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
