import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning/screens/feed/widgets/avatar_story.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12, top: 4, bottom: 4, right: 8),
          child: AvatarStory(
            avatar: "assets/images/avatar.png",
            isRead: true,
            onlyAvatar: true,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "joshua_l",
                style: TextStyle(fontSize: 13, color: Color(0xFF262626)),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Have a nice day, bro!",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                  Text(
                    "· now",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 24),
          child: SvgPicture.asset(
            "assets/icons/camera.svg",
            width: 24,
            height: 24,
          ),
        )
      ],
    );
  }
}
