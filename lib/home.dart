import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/buttonSection.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/statusSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/widgets/boxyButton.dart';
import 'package:facebook_ui/widgets/circularButton.dart';
import 'package:facebook_ui/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search screen appears");
                }),
            CircularButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print("Messenger screen appears");
                }),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            ButtonSection(
              buttonOne: boxyButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {},
                  color: Colors.red),
              buttonTwo: boxyButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {},
                  color: Colors.green),
              buttonThree: boxyButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {},
                  color: Colors.purple),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: mohanlal,
              name: "Mohan Lal",
              publishedAt: "10h",
              postTitle: "Hi, How Are You",
              postImage: post3,
              likeCount: "10K",
              shareCount: "1K",
              commentCount: "2K",
              showBlueTick: true,
            )
          ],
        ),
      ),
    );
  }
}
