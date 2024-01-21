import 'package:flutter/material.dart';
import 'package:learning/screens/feed/widgets/avatar.dart';

class AvatarStory extends StatelessWidget {
  final String avatar;
  final bool isAvatarNetwork;

  const AvatarStory({
    super.key,
    required this.avatar,
    this.isAvatarNetwork = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63,
      height: 63,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFFFBC147),
            Color(0xFFD91A46),
            Color(0xFFA60F93),
          ],
        ),
      ),
      child: Center(
        child: Container(
          width: 59,
          height: 59,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
          ),
          child: Avatar(
            avatar: avatar,
            isAvatarNetwork: isAvatarNetwork,
            width: 56,
            height: 56,
          ),
        ),
      ),
    );
  }
}
