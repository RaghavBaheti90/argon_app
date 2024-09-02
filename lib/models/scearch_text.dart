import 'package:flutter/material.dart';

class Scearch_fild extends StatefulWidget {
  final String hintText;
  final String icon;
  const Scearch_fild({super.key, required this.icon, required this.hintText});

  @override
  State<Scearch_fild> createState() => _Scearch_fildState();
}

class _Scearch_fildState extends State<Scearch_fild> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _scearch = TextEditingController();
    return Container(
        height: 50,
        width: 342,
        child: TextFormField(
          controller: _scearch,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFCAD1D7))),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              ),
              fillColor: const Color(0xFFCAD1D7),
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                  color: Color(0xFF8898AA),
                  fontSize: 14,
                  fontFamily: "OpenSans-Regular"),
              suffixIcon: Image(image: AssetImage(widget.icon))),
        ));
  }
}
