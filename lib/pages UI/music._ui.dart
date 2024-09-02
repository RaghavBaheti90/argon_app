import 'package:argon_app/appbar/app_bar.dart';
import 'package:argon_app/custom/hafe_screen_wigit.dart';
import 'package:argon_app/models/horizontal_music_box.dart';
import 'package:flutter/material.dart';

class music_ui extends StatefulWidget {
  const music_ui({super.key});

  @override
  State<music_ui> createState() => _music_uiState();
}

class _music_uiState extends State<music_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: app_dar(Name: "Music"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            horizontal_music_box(),
            SizedBox(
              height: 13,
            ),
            Text(
              '\$125',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "OpenSans-Bold",
                  color: Color(0xFF525F7F)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Music Album',
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: "OpenSans-Regular",
                  color: Color(0xFF32325D)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Rock music is a genre of popular music.\n It developed during and after the 1960s in \n sthe United Kingdom. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: "OpenSans-Regular",
                  color: Color(0xFF8898AA)),
            ),
            SizedBox(
              height: 39,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                children: [
                  hafe_scrren_wigit(
                      bottomLime: "\$ 125",
                      image: "assets/images/demo14.png",
                      topLine: "Blue Jazz Concert | Buy ticket"),
                  hafe_scrren_wigit(
                      bottomLime: "\$ 199",
                      image: "assets/images/demo14.png",
                      topLine: "Queen’s Concert | Buy ticket")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
