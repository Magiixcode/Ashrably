import 'package:flutter/material.dart';

class EllipsePainter extends CustomPainter {
  EllipsePainter({
    required this.hight,
    required this.width,
    required this.top,
    required this.left,
  });
  double left;
  double top;
  double hight;
  double width;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xffD9D9D9)
      ..style = PaintingStyle.fill;

    canvas.drawOval(Rect.fromLTWH(left, top, width, hight), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
