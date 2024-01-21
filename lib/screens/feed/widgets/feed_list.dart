import 'package:flutter/material.dart';
import 'package:learning/models/feed.dart';
import 'package:learning/screens/feed/widgets/feed_card.dart';

class FeedList extends StatelessWidget {
  final List<Feed> feeds;

  const FeedList({super.key, required this.feeds});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.15),
      child: ListView.separated(
        itemBuilder: (context, index) => FeedCard(feed: feeds[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemCount: feeds.length,
      ),
    );
  }
}
