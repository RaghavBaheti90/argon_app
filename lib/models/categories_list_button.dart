import 'package:argon_app/Pages/home_screen.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class Categories_list_button extends StatefulWidget {
  final String Name;
  final color;
  final background_color;
  final VoidCallback sendto;

  const Categories_list_button({
    super.key,
    required this.Name,
    required this.background_color,
    required this.color,
    required this.sendto,
  });

  @override
  State<Categories_list_button> createState() => _Categories_list_buttonState();
}

class _Categories_list_buttonState extends State<Categories_list_button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.sendto,
      child: Container(
        height: 43,
        width: 108,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.background_color),
        child: Center(
            child: Text(
          widget.Name,
          style: TextStyle(
              color: widget.color, fontFamily: "OpenSans-Bold", fontSize: 14),
        )),
      ),
    );
  }
}
