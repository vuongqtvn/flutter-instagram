import 'package:flutter/material.dart';
import 'package:learning/screens/profile_edit/widgets/input.dart';

class ProfileEditForm extends StatefulWidget {
  const ProfileEditForm({super.key});

  @override
  State<ProfileEditForm> createState() => ProfileEditFormState();
}

class ProfileEditFormState extends State<ProfileEditForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black.withOpacity(0.1),
                  width: 0.5,
                ),
                bottom: BorderSide(
                  color: Colors.black.withOpacity(0.1),
                  width: 0.5,
                ),
              ),
            ),
            child: const Column(
              children: [
                Input(
                  label: 'Name',
                  initialValue: "Jacob West",
                ),
                Input(
                  label: 'Username',
                  initialValue: "jacob_w",
                ),
                Input(
                  label: 'Website',
                  hintText: "Website",
                ),
                Input(
                  label: 'Bio',
                  initialValue:
                      "Digital goodies designer @pixsellz Everything is designed.",
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                foregroundColor: const Color(0xFF3897F0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                padding: const EdgeInsets.all(16),
              ),
              onPressed: () {},
              child: const Text("Switch to Professional Account"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Text(
              "Private Information",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF262626),
              ),
            ),
          ),
          const Column(
            children: [
              Input(
                label: 'Email',
                initialValue: "jacob.west@gmail.com",
              ),
              Input(
                label: 'Phone',
                initialValue: "+1 202 555 0147",
              ),
              Input(
                label: 'Gender',
                initialValue: "Male",
              ),
            ],
          )
        ],
      ),
    );
  }
}
