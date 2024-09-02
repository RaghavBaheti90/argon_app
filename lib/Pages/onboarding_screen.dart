import 'package:argon_app/Pages/home_screen.dart';
import 'package:argon_app/theams/colores.dart';
import 'package:flutter/material.dart';

class Onboarding_screen extends StatefulWidget {
  const Onboarding_screen({super.key});

  @override
  State<Onboarding_screen> createState() => _Onboarding_screenState();
}

class _Onboarding_screenState extends State<Onboarding_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(142, 151, 151, 151)),
        ),
        Positioned(
            top: 430,
            left: 180,
            child: Container(
              height: 24,
              width: 42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Info,
              ),
              child: Center(
                child: const Text(
                  "PRO",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            )),
        ListView(
          children: [
            Container(
                margin: EdgeInsets.only(top: 200, left: 31),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                        height: 42.4,
                        width: 45.61,
                        "assets/icons/argonlogo.png"),
                    const SizedBox(
                      height: 28.6,
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      height: 183,
                      width: 169,
                      child: const Text(
                        "Argon Design System",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 40,
                          fontFamily: "OpenSans-Regular",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Container(
                      height: 69,
                      width: 309,
                      child: const Text(
                        "Take advantage of all the features and screens made by Creative Tim, coded on Flutter for both",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontFamily: "OpenSans-Regular",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          size: 40,
                          Icons.apple,
                          color: Color(0xFFFFFFFF),
                        ),
                        Text(
                          "iOS",
                          style:
                              TextStyle(fontSize: 25, color: Color(0xFFFFFFFF)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          size: 40,
                          Icons.android_outlined,
                          color: Color(0xFFFFFFFF),
                        ),
                        Text(
                          "iOS",
                          style:
                              TextStyle(fontSize: 25, color: Color(0xFFFFFFFF)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 26),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home_screen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Info,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "GET PRO VERSION",
                            style: TextStyle(color: Color(0xFFFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        )
      ],
    ));
  }
}
