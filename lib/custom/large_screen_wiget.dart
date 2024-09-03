import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class large_screen_wiget extends StatefulWidget {
  final String topLine;
  final String bottomLime;
  final String image;
  const large_screen_wiget(
      {super.key,
      required this.bottomLime,
      required this.image,
      required this.topLine});

  @override
  State<large_screen_wiget> createState() => _large_screen_wigetState();
}

class _large_screen_wigetState extends State<large_screen_wiget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 268,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 206,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.white,
            ),
            height: 62,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13, left: 13),
                  child: Expanded(
                      child: Text(
                    widget.topLine,
                    style:
                        TextStyle(fontSize: 14, fontFamily: "OpenSans-Regular"),
                  )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13, bottom: 10),
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
          )
        ],
      ),
    );
  }
}
