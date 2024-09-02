import 'package:argon_app/Pages/categories_sub_pages/Fashion_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Shoes_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/music_screen.dart';
import 'package:argon_app/appbar/app_bar.dart';
import 'package:argon_app/models/categories_view_box.dart';
import 'package:argon_app/models/horizontal_list_view.dart';
import 'package:argon_app/pages%20UI/Beauty_screen_ui.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class Beauty_screen extends StatefulWidget {
  const Beauty_screen({super.key});

  @override
  State<Beauty_screen> createState() => _Beauty_screenState();
}

class _Beauty_screenState extends State<Beauty_screen> {
  @override
  Widget build(BuildContext context) {
    return Beauty_screen_ui();
  }
}
