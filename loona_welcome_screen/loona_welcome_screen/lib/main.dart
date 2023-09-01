import 'package:flutter/material.dart';
import 'package:loona_welcome_screen/views/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Loóna welcome screen',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: WelcomeView(),
      ),
    );
  }
}
