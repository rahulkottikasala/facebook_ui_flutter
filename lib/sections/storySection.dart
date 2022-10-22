import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: me,
            story: story,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mohan Lal",
            avatar: mohanlal,
            story: mohanstory,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Cristiano",
            avatar: cr,
            story: crstory,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Sunny Leone",
            avatar: sunny,
            story: sunnystory,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Prithi Raj",
            avatar: prithi,
            story: prithistory,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Dulquer",
            avatar: dq,
            story: dqstory,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Kallyani P",
            avatar: kallyani,
            story: kallyanistory,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Messi",
            avatar: messi,
            story: messistory,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Sachin",
            avatar: sachin,
            story: sachinstory,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Dulquer",
            avatar: dq,
            story: dqstory,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
