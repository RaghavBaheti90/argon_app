import 'package:argon_app/Pages/categories_sub_pages/Beauty_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Fashion_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Shoes_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/music_screen.dart';
import 'package:argon_app/appbar/app_bar.dart';
import 'package:argon_app/models/categories_view_box.dart';
import 'package:argon_app/models/horizontal_list_view.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class music_screen_ui extends StatefulWidget {
  const music_screen_ui({super.key});

  @override
  State<music_screen_ui> createState() => _music_screen_uiState();
}

class _music_screen_uiState extends State<music_screen_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: app_dar(Name: "Categories"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Wight,
                height: 84,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 18, left: 10, right: 10, bottom: 17),
                  child: horizontal_list_view(
                    name1: "Music",
                    name2: "Beauty",
                    name3: "Fashion",
                    name4: "Shoes",
                    send1: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Music_screen()),
                      );
                    },
                    send2: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Beauty_screen()),
                      );
                    },
                    send3: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Fashion_screen()),
                      );
                    },
                    send4: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shoes_screen()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 900,
                width: double.maxFinite,
                color: appback_ground_color,
                child: Column(
                  children: [
                    categories_view_box(
                      Name: "Artists",
                      Image: "",
                    ),
                    categories_view_box(
                      Name: "Concerts",
                      Image: "",
                    ),
                    categories_view_box(
                      Name: "Dj",
                      Image: "",
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
