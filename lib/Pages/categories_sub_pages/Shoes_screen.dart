import 'package:argon_app/pages%20UI/Shoes_screen_ui.dart';
import 'package:flutter/material.dart';

class Shoes_screen extends StatefulWidget {
  const Shoes_screen({super.key});

  @override
  State<Shoes_screen> createState() => _Shoes_screenState();
}

class _Shoes_screenState extends State<Shoes_screen> {
  @override
  Widget build(BuildContext context) {
    return Shoes_screen_ui();
  }
}
