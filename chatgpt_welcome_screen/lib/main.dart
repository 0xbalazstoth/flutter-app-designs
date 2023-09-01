import 'package:chatgpt_welcome_screen/views/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return const MaterialApp(
      title: 'ChatGPT Welcome Screen',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: WelcomeView(),
      ),
    );
  }
}
