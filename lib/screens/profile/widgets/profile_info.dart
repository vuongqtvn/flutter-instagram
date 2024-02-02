import 'package:flutter/material.dart';
import 'package:learning/data/example.dart';
import 'package:learning/screens/feed/widgets/avatar_story.dart';
import 'package:learning/screens/feed/widgets/story_card.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  AvatarStory(
                    avatar: "assets/images/avatar1.png",
                    isLarge: true,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("54"),
                            Text("Posts"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("834"),
                            Text("Followers"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("162"),
                            Text("Following"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                "Jacob West",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF262626),
                ),
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF262626),
                  ),
                  children: [
                    TextSpan(text: "Digital goodies designer"),
                    TextSpan(
                      text: " @pixsellz",
                      style: TextStyle(
                        color: Color(0xFF05386B),
                      ),
                    )
                  ],
                ),
              ),
              const Text(
                "Everything is designed.",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF262626),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 30,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF262626),
                    padding: const EdgeInsets.all(6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    side: BorderSide(
                      width: 1,
                      color: const Color(0xFF3C3C43).withOpacity(0.18),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(16),
            itemCount: stories.length,
            itemBuilder: (context, index) => StoryCard(
              story: stories[index],
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 18),
          ),
        )
      ],
    );
  }
}
