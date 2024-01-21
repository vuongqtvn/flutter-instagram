import 'package:flutter/material.dart';
import 'package:learning/models/story.dart';
import 'package:learning/screens/feed/widgets/story_card.dart';

class StoryList extends StatelessWidget {
  final List<Story> stories;

  const StoryList({super.key, required this.stories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) => StoryCard(story: stories[index]),
        separatorBuilder: (context, index) => const SizedBox(width: 18),
        itemCount: stories.length,
      ),
    );
  }
}
