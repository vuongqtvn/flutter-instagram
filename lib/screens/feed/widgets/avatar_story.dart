import 'package:flutter/material.dart';
import 'package:learning/screens/feed/widgets/avatar.dart';

class AvatarStory extends StatelessWidget {
  final String avatar;
  final bool isAvatarNetwork;
  final bool isRead;
  final bool onlyAvatar;
  final bool isLarge;

  const AvatarStory({
    super.key,
    required this.avatar,
    this.isAvatarNetwork = false,
    this.isRead = false,
    this.onlyAvatar = false,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isLarge ? 96 : 64,
      height: isLarge ? 96 : 64,
      decoration: !onlyAvatar
          ? BoxDecoration(
              shape: BoxShape.circle,
              gradient: !isRead
                  ? const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFFFBC147),
                        Color(0xFFD91A46),
                        Color(0xFFA60F93),
                      ],
                    )
                  : null,
              border: isRead
                  ? Border.all(color: const Color(0xFFC7C7CC), width: 1)
                  : null,
            )
          : null,
      child: Center(
        child: Container(
          width: isLarge ? 92 : 60,
          height: isLarge ? 92 : 60,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              width: isLarge ? 4 : 2,
              color: Colors.white,
            ),
          ),
          child: Avatar(
            avatar: avatar,
            isAvatarNetwork: isAvatarNetwork,
            width: isLarge ? 86 : 56,
            height: isLarge ? 86 : 56,
          ),
        ),
      ),
    );
  }
}
