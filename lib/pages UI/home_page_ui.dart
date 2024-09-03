import 'package:argon_app/custom/full_screen_wiget.dart';
import 'package:argon_app/custom/hafe_screen_wigit.dart';
import 'package:argon_app/custom/large_screen_wiget.dart';
import 'package:argon_app/models/scearch_text.dart';
import 'package:argon_app/models/side_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home_page_ui extends StatefulWidget {
  const home_page_ui({super.key});

  @override
  State<home_page_ui> createState() => _home_page_uiState();
}

class _home_page_uiState extends State<home_page_ui> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Column(
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(top: 20, left: 19, right: 15, bottom: 25),
                  child: Scearch_fild(
                    hintText: "What are you looking for ?",
                    icon: "assets/icons/plus_scearch.png",
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Side_text(Icon: "assets/icons/Diamond.png", text: "Music"),
                    // Expanded(
                    //   child: SizedBox(
                    //     width: 42,
                    //   ),
                    // ),
                    Text("|"),
                    // Expanded(
                    //   child: SizedBox(
                    //     width: 42,
                    //   ),
                    // ),
                    Side_text(Icon: "assets/icons/basket.png", text: "Fashion"),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 850,
            color: Color.fromARGB(255, 238, 231, 249),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 18, top: 20, bottom: 20, right: 18),
                  child: full_screen_widget(
                    image: "assets/images/flower.png",
                    topLine: "Ice cream is made with carrageenan …",
                    bottomLime: "View article",
                  ),
                ),
                //-----------------------------------------------------
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      hafe_scrren_wigit(
                          bottomLime: "View article",
                          image: "assets/images/demo1.png",
                          topLine: "Is makeup one of your daily esse …"),
                      SizedBox(
                        width: 15,
                      ),
                      hafe_scrren_wigit(
                          bottomLime: "View article",
                          image: "assets/images/demo2.png",
                          topLine: "Coffee is more than just a drink: It’s …")
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 18, top: 0, bottom: 20, right: 18),
                  child: full_screen_widget(
                      bottomLime: "View article",
                      image: "assets/images/demo3.png",
                      topLine: "Fashion is a popular style, especially in …"),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: large_screen_wiget(
                      bottomLime: "View article",
                      image: "assets/images/demo4.png",
                      topLine: "Argon is a great free UI packag …"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
