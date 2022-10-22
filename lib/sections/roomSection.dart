import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

import 'package:facebook_ui/assets.dart';

class RoomSection extends StatelessWidget {
  // const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: messi,
            displayStatus: true,
          ),
          Avatar(
            displayImage: sachin,
            displayStatus: true,
          ),
          Avatar(
            displayImage: sunny,
            displayStatus: true,
          ),
          Avatar(
            displayImage: cr,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avatar(
            displayImage: kallyani,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: prithi,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create\n Room",
          style: TextStyle(color: Colors.blue),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: Colors.blue.shade100,
            ),
          ),
        ),
      ),
    );
  }
}
