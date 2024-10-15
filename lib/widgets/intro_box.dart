import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class IntroBox extends StatelessWidget {
  final int currentText;
  final Function(int value) onChanged;
  const IntroBox({
    super.key,
    required this.currentText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: PageView.builder(
              onPageChanged: onChanged,
              itemBuilder: (context, index) => const Column(
                children: [
                  Text(
                    "Start Finding Your Version The Best Fashion Style",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Your appearance shows your quality so give your best for your best fashion",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              itemCount: 3,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 3),
                duration: const Duration(milliseconds: 300),
                width: currentText == index ? 15 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color: currentText == index ? kprimaryColor : Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          MaterialButton(
            onPressed: () {},
            color: kprimaryColor,
            minWidth: double.infinity,
            height: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Text(
              "Get started",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
