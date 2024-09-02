import 'package:flutter/material.dart';

class horizontal_music_box extends StatefulWidget {
  const horizontal_music_box({super.key});

  @override
  State<horizontal_music_box> createState() => _horizontal_music_boxState();
}

class _horizontal_music_boxState extends State<horizontal_music_box> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 19, left: 12),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/demo13.png"))),
              height: 343,
              width: 343,
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/demo13.png"))),
              height: 343,
              width: 343,
            ),
          ],
        ),
      ),
    );
  }
}
