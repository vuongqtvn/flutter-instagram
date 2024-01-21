import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning/models/feed.dart';
import 'package:learning/screens/feed/widgets/avatar.dart';

class FeedCardHeader extends StatelessWidget {
  final Feed feed;
  const FeedCardHeader({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Avatar(
            avatar: feed.avatar,
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      feed.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF262626),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 4),
                    if (feed.isOfficial)
                      SvgPicture.asset(
                        "assets/icons/official_icon.svg",
                        width: 10,
                        height: 10,
                      ),
                  ],
                ),
                Text(
                  feed.address,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xFF262626),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: SvgPicture.asset(
              "assets/icons/more_icon.svg",
              width: 14,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
