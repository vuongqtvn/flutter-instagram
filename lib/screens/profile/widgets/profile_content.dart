import 'package:flutter/material.dart';
import 'package:learning/screens/profile/widgets/post_list.dart';
import 'package:learning/screens/profile/widgets/tab_button.dart';

enum ProfileTab {
  grid,
  me,
}

class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  ProfileTab tab = ProfileTab.grid;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TabButton(
                  onTap: () {
                    setState(() {
                      tab = ProfileTab.grid;
                    });
                  },
                  icon: "assets/icons/grid_icon.svg",
                  isActive: tab == ProfileTab.grid,
                ),
              ),
              Expanded(
                child: TabButton(
                  onTap: () {
                    setState(() {
                      tab = ProfileTab.me;
                    });
                  },
                  icon: "assets/icons/tags_icon.svg",
                  isActive: tab == ProfileTab.me,
                ),
              )
            ],
          ),
          Expanded(
            child: tab == ProfileTab.grid ? const PostList() : const Text("ME"),
          ),
        ],
      ),
    );
  }
}
