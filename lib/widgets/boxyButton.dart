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
