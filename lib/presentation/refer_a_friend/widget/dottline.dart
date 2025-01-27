import 'package:flutter/material.dart';

class VerticalDottedLine extends StatelessWidget {
  final Color color;
  final double dashHeight;
  final double dashSpace;
  final double strokeWidth;

  const VerticalDottedLine({
    super.key,
    this.color = Colors.grey,
    this.dashHeight = 5,
    this.dashSpace = 5,
    this.strokeWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double totalHeight = constraints.maxHeight;
        final int dashCount = (totalHeight / (dashHeight + dashSpace)).floor();

        return CustomPaint(
          size: Size(strokeWidth, totalHeight),
          painter: _VerticalDottedLinePainter(
            color: color,
            dashHeight: dashHeight,
            dashSpace: dashSpace,
            strokeWidth: strokeWidth,
            dashCount: dashCount,
          ),
        );
      },
    );
  }
}

class _VerticalDottedLinePainter extends CustomPainter {
  final Color color;
  final double dashHeight;
  final double dashSpace;
  final double strokeWidth;
  final int dashCount;

  _VerticalDottedLinePainter({
    required this.color,
    required this.dashHeight,
    required this.dashSpace,
    required this.strokeWidth,
    required this.dashCount,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double startY = 0;
    for (int i = 0; i < dashCount; i++) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashHeight),
        paint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
