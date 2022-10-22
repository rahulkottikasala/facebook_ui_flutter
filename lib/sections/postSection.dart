import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/suggestionSection.dart';
import 'package:facebook_ui/widgets/postCard.dart';
import 'package:flutter/material.dart';

class PostSection extends StatelessWidget {
  Widget divider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostCard(
            avatar: mohanlal,
            name: "Mohan Lal",
            publishedAt: "56m",
            postTitle: mohantitle,
            postImage: mohanpost,
            likeCount: "8K",
            shareCount: "1K",
            commentCount: "3K",
            showBlueTick: true,
          ),
          divider,
          PostCard(
            avatar: cr,
            name: "Cristiano",
            publishedAt: "7h",
            postTitle: crtitle,
            postImage: crpost,
            likeCount: "790K",
            shareCount: "29K",
            commentCount: "190K",
            showBlueTick: true,
          ),
          divider,
          SuggestionSection(),
          divider,
          PostCard(
            avatar: dq,
            name: "Dulquer",
            publishedAt: "9h",
            postTitle: dqtitle,
            postImage: dqpost,
            likeCount: "139K",
            shareCount: "12K",
            commentCount: "200K",
            showBlueTick: true,
          ),
          divider,
          PostCard(
            avatar: kallyani,
            name: "Kallyani P",
            publishedAt: "13h",
            postTitle: kallyanintitle,
            postImage: kallyanipost,
            likeCount: "120K",
            shareCount: "26K",
            commentCount: "82K",
            showBlueTick: true,
          ),
          divider,
          PostCard(
            avatar: messi,
            name: "Messi",
            publishedAt: "17h",
            postTitle: '',
            postImage: messipost,
            likeCount: "1M",
            shareCount: "6K",
            commentCount: "38K",
            showBlueTick: true,
          ),
          divider,
          PostCard(
            avatar: prithi,
            name: "Prithi Raj",
            publishedAt: "18h",
            postTitle: prithititle,
            postImage: prithipost,
            likeCount: "100K",
            shareCount: "18K",
            commentCount: "23K",
            showBlueTick: true,
          ),
          divider,
          PostCard(
            avatar: sunny,
            name: "Sunny Leone",
            publishedAt: "1d",
            postTitle: sunnytitle,
            postImage: sunnypost,
            likeCount: "1M",
            shareCount: "80K",
            commentCount: "200K",
            showBlueTick: true,
          ),
          divider,
          PostCard(
            avatar: sachin,
            name: "Sachin Tendulkar",
            publishedAt: "1d",
            postTitle: sachintitle,
            postImage: sachinpost,
            likeCount: "100K",
            shareCount: "18K",
            commentCount: "23K",
            showBlueTick: true,
          ),
          divider,
        ],
      ),
    );
  }
}
