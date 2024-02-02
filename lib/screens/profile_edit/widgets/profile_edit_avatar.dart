import 'package:flutter/material.dart';
import 'package:learning/screens/feed/widgets/avatar.dart';

class ProfileEditAvatar extends StatefulWidget {
  const ProfileEditAvatar({super.key});

  @override
  State<ProfileEditAvatar> createState() => _ProfileEditAvatarState();
}

class _ProfileEditAvatarState extends State<ProfileEditAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Avatar(
            avatar: "assets/images/avatar.png",
            width: 95,
            height: 95,
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Change Profile Photo",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3897F0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
