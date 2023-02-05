import 'package:flutter/material.dart';
import 'package:gpt/my_theme.dart';
import 'package:gpt/screens/login_screen.dart';
import 'package:gpt/screens/main_chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ChatGPT",
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkThem,
      home: LoginScreen(),
    );
  }
}