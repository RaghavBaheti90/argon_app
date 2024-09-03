import 'package:argon_app/Pages/categories_sub_pages/Beauty_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Fashion_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/Shoes_screen.dart';
import 'package:argon_app/Pages/categories_sub_pages/music_screen.dart';
import 'package:argon_app/appbar/app_bar.dart';
import 'package:argon_app/custom/full_screen_wiget.dart';
import 'package:argon_app/custom/hafe_screen_wigit.dart';
import 'package:argon_app/custom/large_screen_wiget.dart';
import 'package:argon_app/models/horizontal_list_view.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class Shoes_screen_ui extends StatefulWidget {
  const Shoes_screen_ui({super.key});

  @override
  State<Shoes_screen_ui> createState() => _Shoes_screen_uiState();
}

class _Shoes_screen_uiState extends State<Shoes_screen_ui> {
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
                    name2: "Beauty",
                    name3: "Fashion",
                    name1: "Shoes",
                    send1: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shoes_screen()),
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
                        MaterialPageRoute(builder: (context) => Music_screen()),
                      );
                    },
                    send4: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Beauty_screen()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 900,
                width: double.maxFinite,
                color: appback_ground_color,
                child: const Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 14, left: 14, right: 14),
                      child: full_screen_widget(
                          bottomLime: "View article",
                          image: "assets/images/demo9.png",
                          topLine:
                              "AirMax shoes are the best line of shoes created by Nike."),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 14, right: 14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          hafe_scrren_wigit(
                              bottomLime: "View article",
                              image: "assets/images/demo10.png",
                              topLine: "Blue Adidas"),
                          SizedBox(
                            width: 15,
                          ),
                          hafe_scrren_wigit(
                              bottomLime: "View article",
                              image: "assets/images/demo10.png",
                              topLine: "Perfect Shoes"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 15, right: 15),
                      child: full_screen_widget(
                          bottomLime: "View article",
                          image: "assets/images/demo11.png",
                          topLine:
                              "Fashion is a popular aesthetic expression in certain time and context."),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                      child: large_screen_wiget(
                          bottomLime: "View article",
                          image: "assets/images/demo12.png",
                          topLine: "Orange Sneackers"),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
