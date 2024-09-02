import 'package:argon_app/Pages/categories_sub_pages/Beauty_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Fashion_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Shoes_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/music_screen.dart';
import 'package:argon_app/appbar/app_bar.dart';
import 'package:argon_app/models/categories_view_box.dart';
import 'package:argon_app/models/horizontal_list_view.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class Beauty_screen_ui extends StatefulWidget {
  const Beauty_screen_ui({super.key});

  @override
  State<Beauty_screen_ui> createState() => _Beauty_screen_uiState();
}

class _Beauty_screen_uiState extends State<Beauty_screen_ui> {
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
                    name4: "Music",
                    name1: "Beauty",
                    name2: "Fashion",
                    name3: "Shoes",
                    send1: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Beauty_screen()),
                      );
                    },
                    send2: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Fashion_screen()),
                      );
                    },
                    send3: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shoes_screen()),
                      );
                    },
                    send4: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Music_screen()),
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
                      Name: "Hands",
                      Image: "assets/images/demo5.png",
                    ),
                    categories_view_box(
                      Name: "Body",
                      Image: "assets/images/demo6.png",
                    ),
                    categories_view_box(
                      Name: "Face",
                      Image: "assets/images/demo5.png",
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
