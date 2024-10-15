import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/widgets/intro_box.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int currentText = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/intro.jpg"),
                Positioned(
                  right: 0,
                  left: 0,
                  top: 0,
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 80,
                          offset: Offset(-80, -10),
                        ),
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 80,
                          offset: Offset(80, -10),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/icon-light.png",
                    height: 35,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            IntroBox(
              currentText: currentText,
              onChanged: (value) => setState(() {
                currentText = value;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
