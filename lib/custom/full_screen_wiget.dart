import 'package:argon_app/theams/colores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class full_screen_widget extends StatefulWidget {
  final String topLine;
  final String bottomLime;
  final String image;

  const full_screen_widget(
      {super.key,
      required this.bottomLime,
      required this.image,
      required this.topLine});

  @override
  State<full_screen_widget> createState() => _full_screen_widgetState();
}

class _full_screen_widgetState extends State<full_screen_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(color: Wight, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 162,
              height: 131,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 130,
              width: 181,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 13, left: 13),
                      child: Expanded(
                          child: Text(
                        widget.topLine,
                        style: TextStyle(
                            fontSize: 14, fontFamily: "OpenSans-Regular"),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 14, left: 13),
                      child: Expanded(
                          child: Text(
                        widget.bottomLime,
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: "OpenSans-Bold",
                            color: Primary),
                      )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
