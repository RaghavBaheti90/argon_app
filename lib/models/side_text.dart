import 'package:flutter/material.dart';

class Side_text extends StatefulWidget {
  final String Icon;
  final String text;
  const Side_text({super.key, required this.Icon, required this.text});

  @override
  State<Side_text> createState() => _Side_textState();
}

class _Side_textState extends State<Side_text> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 22, width: 22, child: Image.asset(widget.Icon)),
        const SizedBox(
          width: 5,
        ),
        Text(
          widget.text,
          style: TextStyle(fontSize: 14, fontFamily: "OpenSans-Regular"),
        )
      ],
    );
  }
}
