import 'package:flutter/material.dart';
import 'package:travel_app_ui/extensions/context_extension.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({Key? key}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Spacer(),
          Expanded(
            flex: 10,
            child: buildLeadingIcon(context),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 65,
            child: buildTextField(context),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 10,
            child: buildTrailingIcon(context),
          ),
          Spacer()
        ],
      ),
    );
  }

  Icon buildLeadingIcon(BuildContext context) {
    return Icon(
      Icons.search_rounded,
      size: context.getWidth(0.06),
    );
  }

  Icon buildTrailingIcon(BuildContext context) {
    return Icon(
      Icons.tune,
      size: context.getWidth(0.06),
    );
  }

  TextField buildTextField(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration.collapsed(
        hintText: "Discover a city",
        hintStyle: TextStyle(
          fontSize: context.getWidth(0.045),
        ),
      ),
    );
  }
}
