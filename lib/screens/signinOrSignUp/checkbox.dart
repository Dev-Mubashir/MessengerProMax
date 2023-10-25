import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class CustomCircularCheckbox extends StatefulWidget {
  @override
  _CustomCircularCheckboxState createState() => _CustomCircularCheckboxState();
}

class _CustomCircularCheckboxState extends State<CustomCircularCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 28.0,
        height: 28.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isChecked ? kPrimaryColor : kContentColorLightTheme,
          border: Border.all(
            color: kPrimaryColor, // Border color when checked
            width: 2.0,
          ),
        ),
        child: Center(
          child: Icon(
            Icons.check,
            color: isChecked
                ? Colors.black
                : Colors.black, // Checkmark color when checked
          ),
        ),
      ),
    );
  }
}
