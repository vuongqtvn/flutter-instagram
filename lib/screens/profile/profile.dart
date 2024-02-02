import 'package:flutter/material.dart';
import 'package:learning/screens/profile/widgets/profile_appbar.dart';
import 'package:learning/screens/profile/widgets/profile_content.dart';
import 'package:learning/screens/profile/widgets/profile_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProfileAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            ProfileInfo(),
            Expanded(child: ProfileContent()),
          ],
        ),
      ),
    );
  }
}
