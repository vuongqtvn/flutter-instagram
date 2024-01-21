import 'package:flutter/material.dart';
import 'package:learning/models/story.dart';
import 'package:learning/screens/feed/widgets/avatar_story.dart';

class StoryCard extends StatelessWidget {
  final Story story;
  const StoryCard({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarStory(avatar: story.avatar),
        Text(
          story.name,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color(0xFF262626),
          ),
        ),
      ],
    );
  }
}
