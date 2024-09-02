import 'package:flutter/material.dart';

class app_dar extends StatefulWidget {
  final String Name;
  const app_dar({super.key, required this.Name});

  @override
  State<app_dar> createState() => _app_darState();
}

class _app_darState extends State<app_dar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.Name,
          style: TextStyle(
              fontSize: 16,
              fontFamily: "OpenSans-Bold",
              color: Color(0xFF525F7F)),
        ),
        Row(
          children: [
            Container(
                height: 32,
                width: 32,
                child: Container(child: Image.asset("assets/icons/bell.png"))),
            SizedBox(
              width: 20,
            ),
            Container(
                height: 32,
                width: 32,
                child: Center(child: Image.asset("assets/icons/basket.png")))
          ],
        ),
      ],
    );
  }
}
