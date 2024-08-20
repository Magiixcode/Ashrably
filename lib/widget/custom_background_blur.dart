import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBackgroundColor extends StatelessWidget {
  const CustomBackgroundColor({required this.direction, super.key});
  final Alignment direction;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 300,
      child: Stack(
        children: [
          Align(
            alignment: direction,
            child: Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4CC9F0)),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 80, sigmaY: 50),
            child: Container(),
          ),
        ],
      ),
    );
  }
}
