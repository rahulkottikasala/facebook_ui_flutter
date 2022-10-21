import 'package:facebook_ui/sections/buttonSection.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:facebook_ui/widgets/boxyButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postImage,
    required this.postTitle,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
    this.showBlueTick = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        postCardHeader(),
        titleSection(),
        imageSection(),
        footerSection(),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        ButtonSection(
          buttonOne: boxyButton(
              buttonText: "Like",
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonAction: () {},
              color: Colors.grey.shade700),
          buttonTwo: boxyButton(
              buttonText: "Comment",
              buttonIcon: Icons.message_outlined,
              buttonAction: () {},
              color: Colors.grey.shade700),
          buttonThree: boxyButton(
              buttonText: "Share",
              buttonIcon: Icons.share_outlined,
              buttonAction: () {},
              color: Colors.grey.shade700),
        ),
      ]),
    );
  }

//post cart header
  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name != null ? name : "",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            publishedAt != null ? publishedAt : "",
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[700],
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }

//Title section
  Widget titleSection() {
   return  postTitle != null && postTitle != "" ?
    Container(
      padding: EdgeInsets.only(
        bottom: 5,
      ),
      child: Text(
        postTitle != null ? postTitle : "",
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    ): SizedBox();
  }

//Image section

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(postImage),
    );
  }

//Footer section

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              SizedBox(width: 5),
              displayText(label: likeCount != null ? likeCount : "0"),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              displayText(label: commentCount != null ? commentCount : "0"),
              SizedBox(width: 5),
              displayText(label: "Comments"),
              SizedBox(width: 10),
              displayText(label: shareCount != null ? shareCount : "0"),
              SizedBox(width: 5),
              displayText(label: "Shares"),
              SizedBox(width: 10),
              Avatar(
                displayImage: avatar,
                displayStatus: false,
                width: 25,
                height: 25,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
                color: Colors.grey[700],
              )
            ],
          ),
        )
      ]),
    );
  }

  //display text
  Widget displayText({required String label}) {
    return Text(
      label != null ? label : "",
      style: TextStyle(color: Colors.grey[700]),
    );
  }
}
