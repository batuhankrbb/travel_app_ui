import 'package:flutter/material.dart';


class LikeButton extends StatefulWidget {
  LikeButton({Key? key, required this.size}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();

  final double size;
}


class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.all(5) + EdgeInsets.only(top: 2),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        width: widget.size,
        height: widget.size,
        child: buildIconButton(),
      ),
    );
  }

  Widget buildIconButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      child: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: isLiked ? Colors.red : Colors.black,
        size: widget.size * 0.7,
      ),
    );
  }
}
