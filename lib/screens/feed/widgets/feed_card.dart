import 'package:flutter/material.dart';
import 'package:learning/models/feed.dart';
import 'package:learning/screens/feed/widgets/feed_card_footer.dart';
import 'package:learning/screens/feed/widgets/feed_card_header.dart';

class FeedCard extends StatelessWidget {
  final Feed feed;
  const FeedCard({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          FeedCardHeader(feed: feed),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              feed.images[0],
              fit: BoxFit.fitWidth,
            ),
          ),
          FeedCardFooter(feed: feed),
        ],
      ),
    );
  }
}
