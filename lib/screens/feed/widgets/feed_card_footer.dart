import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning/models/feed.dart';
import 'package:learning/screens/feed/widgets/avatar.dart';

class FeedCardFooter extends StatelessWidget {
  final Feed feed;
  const FeedCardFooter({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/like.svg",
                      width: 24,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(width: 16),
                    SvgPicture.asset(
                      "assets/icons/comment.svg",
                      width: 22,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(width: 16),
                    SvgPicture.asset(
                      "assets/icons/message.svg",
                      width: 23,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF3897F0),
                    ),
                    width: 6,
                    height: 6,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF000000).withOpacity(0.15),
                    ),
                    width: 6,
                    height: 6,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF000000).withOpacity(0.15),
                    ),
                    width: 6,
                    height: 6,
                  )
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/save.svg",
                      width: 21,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Avatar(
                avatar: feed.like.avatar,
                width: 17,
                height: 17,
              ),
              const SizedBox(width: 6.5),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF262626),
                  ),
                  children: [
                    const TextSpan(text: "Liked by "),
                    TextSpan(
                      text: feed.like.name,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const TextSpan(text: " and "),
                    TextSpan(
                      text: "${feed.totalLike} others",
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 6),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF262626),
              ),
              children: [
                TextSpan(
                  text: feed.name,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  text: feed.comment,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
