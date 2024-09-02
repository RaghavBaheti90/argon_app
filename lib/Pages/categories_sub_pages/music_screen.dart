import 'package:argon_app/Pages/categories_sub_pages/Beauty_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Fashion_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Shoes_screen.dart';
import 'package:argon_app/appbar/app_bar.dart';
import 'package:argon_app/models/horizontal_list_view.dart';
import 'package:argon_app/pages%20UI/music_screen_ui.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class Music_screen extends StatefulWidget {
  const Music_screen({super.key});

  @override
  State<Music_screen> createState() => _Music_screenState();
}

class _Music_screenState extends State<Music_screen> {
  @override
  Widget build(BuildContext context) {
    return music_screen_ui();
  }
}
