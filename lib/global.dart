import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "custom painter example",
        ),
      ),
      body: Center(
        child: CustomPaint(
          size: const Size(200, 200),
          painter: CirclePainter(),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 7;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 95, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => false;
}
