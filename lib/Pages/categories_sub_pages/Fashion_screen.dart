import 'package:argon_app/Pages/categories_sub_pages/Beauty_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Shoes_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/music_screen.dart';
import 'package:argon_app/appbar/app_bar.dart';
import 'package:argon_app/models/categories_view_box.dart';
import 'package:argon_app/models/horizontal_list_view.dart';
import 'package:argon_app/pages%20UI/Fashion_screen_ui.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class Fashion_screen extends StatefulWidget {
  const Fashion_screen({super.key});

  @override
  State<Fashion_screen> createState() => _Fashion_screenState();
}

class _Fashion_screenState extends State<Fashion_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: app_dar(Name: "Categories"),
        ),
        body: Fashion_screen_ui());
  }
}
