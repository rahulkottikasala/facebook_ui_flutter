import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color color,
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

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonText: "Live",
            buttonAction: () {},
            buttonIcon: Icons.video_call,
            color: Colors.red,
          ),
          verticalDivider,
          headerButton(
            buttonText: "Photo",
            buttonAction: () {},
            buttonIcon: Icons.photo_library,
            color: Colors.green,
          ),
          verticalDivider,
          headerButton(
            buttonText: "Room",
            buttonAction: () {},
            buttonIcon: Icons.video_call,
            color: Colors.purple,
          ),
        
        ],
      ),
    );
  }
}
