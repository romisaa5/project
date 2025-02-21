import 'dart:math';

import 'package:finalproject/constants.dart';
import 'package:flutter/material.dart';

class HeartWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 30,
      child: CustomPaint(
        painter: WavePainter(),
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = kSecondaryColor
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    Path path = Path();
    for (double i = 0; i < size.width; i += 6) {
      path.moveTo(i, size.height / 2);
      path.lineTo(i, size.height / 2 - (Random().nextDouble() * 15));
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
