import 'package:argon_app/appbar/app_bar.dart';
import 'package:argon_app/models/Drawer_list_tile.dart';
import 'package:argon_app/models/drawer.dart';
import 'package:argon_app/pages%20UI/home_page_ui.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: app_dar(
        Name: "Home",
      )),
      drawer: app_drower(),
      body: home_page_ui(),
    );
  }
}
