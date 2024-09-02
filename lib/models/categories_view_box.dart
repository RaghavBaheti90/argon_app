import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class categories_view_box extends StatefulWidget {
  final String Name;
  final String Image;
  const categories_view_box(
      {super.key, required this.Name, required this.Image});

  @override
  State<categories_view_box> createState() => _categories_view_boxState();
}

class _categories_view_boxState extends State<categories_view_box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.Image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5),
        color: light_gray,
      ),
      height: 254,
      width: 343,
      child: Center(
          child: Text(
        widget.Name,
        style:
            TextStyle(color: Wight, fontSize: 18, fontFamily: "OpenSans-Bold"),
      )),
    );
  }
}
