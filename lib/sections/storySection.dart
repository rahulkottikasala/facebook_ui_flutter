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
            story: post6,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mohan Lal",
            avatar: mohanlal,
            story: post7,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Amal Nadh",
            avatar: amal,
            story: post4,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Sunny Leone",
            avatar: sunny,
            story: post9,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Prithi Raj",
            avatar: prithi,
            story: post8,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Gokul",
            avatar: gokul,
            story: post5,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
