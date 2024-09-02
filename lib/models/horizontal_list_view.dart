import 'package:argon_app/models/categories_list_button.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class horizontal_list_view extends StatefulWidget {
  final String name1;
  final String name2;
  final String name3;
  final String name4;
  final VoidCallback send1;
  final VoidCallback send2;
  final VoidCallback send3;
  final VoidCallback send4;
  const horizontal_list_view({
    super.key,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.name4,
    required this.send1,
    required this.send2,
    required this.send3,
    required this.send4,
  });

  @override
  State<horizontal_list_view> createState() => _horizontal_list_viewState();
}

class _horizontal_list_viewState extends State<horizontal_list_view> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Categories_list_button(
              sendto: widget.send1,
              Name: widget.name1,
              background_color: Primary,
              color: Wight),
          SizedBox(
            width: 10,
          ),
          Categories_list_button(
            sendto: widget.send2,
            Name: widget.name2,
            background_color: Dimwight,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Categories_list_button(
              sendto: widget.send3,
              Name: widget.name3,
              background_color: Dimwight,
              color: Colors.black),
          SizedBox(
            width: 10,
          ),
          Categories_list_button(
              sendto: widget.send4,
              Name: widget.name4,
              background_color: Dimwight,
              color: Colors.black),
        ],
      ),
    );
  }
}
