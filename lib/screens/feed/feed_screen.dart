import 'package:flutter/material.dart';
import 'package:learning/data/example.dart';
import 'package:learning/screens/feed/widgets/feed_app_bar.dart';
import 'package:learning/screens/feed/widgets/feed_list.dart';
import 'package:learning/screens/feed/widgets/story_list.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FeedAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            StoryList(stories: stories),
            Expanded(
              child: FeedList(feeds: feeds),
            ),
          ],
        ),
      ),
    );
  }
}
