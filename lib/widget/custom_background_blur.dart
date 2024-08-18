import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBackgroundColor extends StatelessWidget {
  const CustomBackgroundColor({required this.direction, super.key});
  final Alignment direction;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: direction,
          child: Container(
            height: 250,
            width: 250,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xff4CC9F0)),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(),
        ),
      ],
    );
  }
}
