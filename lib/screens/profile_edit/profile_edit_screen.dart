import 'package:flutter/material.dart';
import 'package:learning/screens/profile_edit/widgets/profile_edit_appbar.dart';
import 'package:learning/screens/profile_edit/widgets/profile_edit_avatar.dart';
import 'package:learning/screens/profile_edit/widgets/profile_edit_form.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProfileEditAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileEditAvatar(),
              ProfileEditForm(),
            ],
          ),
        ),
      ),
    );
  }
}
