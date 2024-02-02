import 'package:flutter/material.dart';
import 'package:learning/screens/profile/profile.dart';
// import 'package:learning/screens/direct_message/direct_message.dart';
// import 'package:learning/screens/profile_edit/profile_edit_screen.dart';
// import 'package:learning/screens/authorization/authorization_screen.dart';
// import 'package:learning/screens/feed/feed_screen.dart';
// import 'package:learning/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
      // home: const DirectMessage(),
      // home: const ProfileEdit(),
      // home: const AuthorizationScreen(),
      // home: const LoginScreen(),
      // home: const FeedScreen(),
    );
  }
}
