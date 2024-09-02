import 'package:argon_app/Pages/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Argon',
      debugShowCheckedModeBanner: false,
      home: Onboarding_screen(),
    );
  }
}
