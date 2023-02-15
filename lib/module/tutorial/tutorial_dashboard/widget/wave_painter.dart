import 'package:flutter/material.dart';
import 'dart:math' as math;

class WavePainter extends CustomPainter {
  final double waterLevel;
  final double waveHeight;
  final double waveLength;
  final double amplitude;

  WavePainter({
    required this.waterLevel,
    required this.waveHeight,
    required this.waveLength,
    required this.amplitude,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, waterLevel);

    for (double i = 0; i < size.width; i++) {
      final y = waterLevel +
          waveHeight * math.sin(i * waveLength + 0) +
          amplitude * math.sin(i * waveLength * 0.75 + 1) +
          amplitude * math.sin(i * waveLength * 0.5 + 2) +
          amplitude * math.sin(i * waveLength * 0.25 + 3);

      path.lineTo(i, y);
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
