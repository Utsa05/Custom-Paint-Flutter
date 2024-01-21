import 'package:flutter/material.dart';

class SimpleLine extends StatelessWidget {
  const SimpleLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.indigo.shade500,
          child: CustomPaint(
            painter: MyPainter(),
            size: const Size(200, 250),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 5;
    paint.color = Colors.red;
    canvas.drawLine(Offset.zero, Offset(size.width, 0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
