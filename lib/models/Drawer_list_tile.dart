import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class Drawer_list_tile extends StatefulWidget {
  final String name;
  final String icon;
  final VoidCallback onTap;
  final int Index;

  const Drawer_list_tile({
    Key? key,
    required this.name,
    required this.icon,
    required this.onTap,
    required this.Index,
  }) : super(key: key);

  @override
  State<Drawer_list_tile> createState() => _Drawer_list_tileState();
}

class _Drawer_list_tileState extends State<Drawer_list_tile> {
  int _selected = 0;
  void _changeSelected(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: _selected == widget.Index,
      title: Row(
        children: [
          Container(
            height: 32,
            width: 32,
            child: Center(
              child: Image.asset(
                widget.icon,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            widget.name,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "OpenSans-Regular"),
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).pop();
        widget.onTap();
      },
    );
  }
}
