import 'package:argon_app/Pages/categories_sub_pages/music_screen.dart';
import 'package:argon_app/appbar/app_bar.dart';
import 'package:argon_app/models/horizontal_list_view.dart';
import 'package:flutter/material.dart';

class categories_page extends StatefulWidget {
  const categories_page({super.key});

  @override
  State<categories_page> createState() => _categories_pageState();
}

class _categories_pageState extends State<categories_page> {
  @override
  Widget build(BuildContext context) {
    return Music_screen();
  }
}
