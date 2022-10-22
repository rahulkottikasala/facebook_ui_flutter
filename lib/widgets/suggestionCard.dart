import 'package:facebook_ui/widgets/boxyButton.dart';
import 'package:flutter/material.dart';

class SuggestionCad extends StatelessWidget {
  final String avatar;
  final String name;
  final int mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;
  SuggestionCad({
    required this.avatar,
    required this.name,
    required this.mutualFriends,
    required this.addFriend,
    required this.removeFriend,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Image.asset(
            avatar,
            height: 250,
            fit: BoxFit.cover,
          ),
        ));
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        child: Column(children: [
          ListTile(
            title: Text(name != null ? name : ""),
            subtitle: Text(mutualFriends != null && mutualFriends != 0
                ? mutualFriends == 1
                    ? "$mutualFriends Mutual Friend"
                    : "$mutualFriends Mutual Friends"
                : "0 Mutual Friend"),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconButton(
                    buttonAction: addFriend,
                    buttonIcon: Icons.account_box,
                    buttonColor: Colors.blue,
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: "Add Friend"),
                blankButton(
                    buttonAction: removeFriend,
                    buttonColor: Colors.grey.shade300,
                    buttonTextColor: Colors.black,
                    buttonText: "Remove")
              ],
            ),
          )
        ]),
      ),
    );
  }
}
