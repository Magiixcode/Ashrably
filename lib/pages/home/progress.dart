import 'package:flutter/material.dart';

class CustomProgress extends StatelessWidget {
  const CustomProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          width: 320,
          height: 110,
          decoration: BoxDecoration(
            color: const Color(0xff4CC9F0),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 170,
          height: 110,
          decoration: BoxDecoration(
            color: const Color(0xff1911E9),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Text(
            '55%',
            style: TextStyle(
              fontFamily: 'Marhey',
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
