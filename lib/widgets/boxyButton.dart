import 'package:flutter/material.dart';

Widget boxyButton({
  required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonAction,
  Color color = Colors.grey,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: color,
    ),
    label: Text(
      buttonText,
      style: TextStyle(color: Colors.black),
    ),
  );
}

Widget iconButton({
  required void Function() buttonAction,
  required IconData buttonIcon,
  required Color buttonColor,
  required Color buttonTextColor,
  required Color buttonIconColor,
  required String buttonText,
}) {
  return TextButton.icon(
    icon: Icon(
      buttonIcon,
      color: buttonIconColor,
    ),
    label: Text(
      buttonText,
      style: TextStyle(color: buttonTextColor),
    ),
    onPressed: buttonAction,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(buttonColor),
    ),
  );
}

Widget blankButton({
  required void Function() buttonAction,
  required Color buttonColor,
  required Color buttonTextColor,
  required String buttonText,
}) {
  return TextButton(
    onPressed: buttonAction,
    child: Container(
      // height: 23,
      padding: EdgeInsets.all(4),
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(buttonColor),
    ),
  );
}
