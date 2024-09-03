import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class hafe_scrren_wigit extends StatefulWidget {
  final String topLine;
  final String bottomLime;
  final String image;
  const hafe_scrren_wigit(
      {super.key,
      required this.bottomLime,
      required this.image,
      required this.topLine});

  @override
  State<hafe_scrren_wigit> createState() => _hafe_scrren_wigitState();
}

class _hafe_scrren_wigitState extends State<hafe_scrren_wigit> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 213,
        width: 164,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 117,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
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
              height: 95,
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
                      style: TextStyle(
                          fontSize: 14, fontFamily: "OpenSans-Regular"),
                    )),
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
            )
          ],
        ),
      ),
    );
  }
}
