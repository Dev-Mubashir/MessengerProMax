// import 'package:chat/screens/signinOrSignUp/signin_or_signup_screen.dart';
import 'package:chat/screens/calls/calls.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:chat/screens/messages/message_screen.dart';
import 'package:chat/screens/people/people.dart';
import 'package:chat/screens/welcome/welcome_screen.dart';
import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Flutter Way',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      // darkTheme: lightThemeData(context),
      themeMode: ThemeMode.dark,
      home: SplashScreen(),
    );
  }
}
