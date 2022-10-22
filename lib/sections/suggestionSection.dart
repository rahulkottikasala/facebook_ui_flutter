import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(children: [
        ListTile(
          title: Text("People You May Know"),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            color: Colors.grey[700],
          ),
        ),
        Container(
          height: 390,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SuggestionCad(
                  avatar: dhanush,
                  name: "Dhanush",
                  mutualFriends: 70,
                  addFriend: () {},
                  removeFriend: () {}),
              SuggestionCad(
                  avatar: obama,
                  name: "Barack Obama",
                  mutualFriends: 1,
                  addFriend: () {},
                  removeFriend: () {}),
              SuggestionCad(
                  avatar: sitara,
                  name: "Sithara Krishnakumar",
                  mutualFriends: 30,
                  addFriend: () {},
                  removeFriend: () {}),
              SuggestionCad(
                  avatar: soorya,
                  name: "Soorya",
                  mutualFriends: 48,
                  addFriend: () {},
                  removeFriend: () {}),
              SuggestionCad(
                  avatar: jsoorya,
                  name: "Jaya Soorya",
                  mutualFriends: 18,
                  addFriend: () {},
                  removeFriend: () {}),
            ],
          ),
        )
      ]),
    );
  }
}
