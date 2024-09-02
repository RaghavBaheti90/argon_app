import 'package:argon_app/Pages/categories_sub_pages/categories_screen.dart';
import 'package:argon_app/Pages/home_screen.dart';
import 'package:argon_app/Pages/music1.dart';
import 'package:argon_app/models/Drawer_list_tile.dart';
import 'package:flutter/material.dart';

class app_drower extends StatefulWidget {
  const app_drower({super.key});

  @override
  State<app_drower> createState() => _app_drowerState();
}

class _app_drowerState extends State<app_drower> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 52, left: 30),
            child: Image.asset(
              "assets/icons/blue_logo.png",
              alignment: Alignment.topLeft,
            ),
          ),
          Drawer_list_tile(
            Index: 0,
            icon: "assets/icons/Shop.png",
            name: "Home",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home_screen()),
              );
            },
          ),
          Drawer_list_tile(
            Index: 1,
            icon: "assets/icons/ungroup.png",
            name: "Categories",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => categories_page()),
              );
            },
          ),
          Drawer_list_tile(
            Index: 2,
            icon: "assets/icons/music.png",
            name: "Music",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Music()),
              );
            },
          ),
          Drawer_list_tile(
            Index: 3,
            icon: "assets/icons/single-copy-04.png",
            name: "Cards",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home_screen()),
              );
            },
          ),
          Drawer_list_tile(
            Index: 4,
            icon: "assets/icons/settings_icon.png",
            name: "Settings",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home_screen()),
              );
            },
          ),
          Drawer_list_tile(
            Index: 5,
            icon: "assets/icons/profile_icon.png",
            name: "Profile",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home_screen()),
              );
            },
          ),
          Drawer_list_tile(
            Index: 6,
            icon: "assets/icons/Register_Icon.png",
            name: "Register",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home_screen()),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Divider(
              thickness: 1,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32, top: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DOCUMENTATION",
                  style: TextStyle(
                      fontFamily: "Regular", color: Color(0xFF8898AA)),
                ),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Container(
                    height: 32,
                    width: 32,
                    child: Center(
                        child: Image.asset("assets/icons/spaceship.png"))),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Getting started",
                  style: TextStyle(
                      fontFamily: "Regular", color: Color(0xFF8898AA)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
