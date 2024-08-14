import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBackgroundColor extends StatelessWidget {
  CustomBackgroundColor({required this.direction, super.key});
  Alignment direction;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: direction,
          child: Container(
            height: MediaQuery.of(context).size.height / 6.3,
            width: MediaQuery.of(context).size.width / 3.9,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xff4CC9F0)),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(),
        ),
      ],
    );
  }
}
