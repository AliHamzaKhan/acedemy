
import 'dart:math';

import 'package:acedemy/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MeterWidget extends StatelessWidget {
  final double value;

  const MeterWidget({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : EdgeInsets.all(10),
      decoration : BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(200)
      ),
      child: Container(
        width: 200,
        height: 200,
        child: CustomPaint(
          painter: WholeCircleMeterPainter(value: value),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WholeCircleMeterPainter extends CustomPainter {
  final double value;

  WholeCircleMeterPainter({required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint outerCirclePaint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0;

    final Paint innerCirclePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final Paint indicatorPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final Paint tickPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final Paint smallTickPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final double radius = size.width / 2;

    // Draw outer circle
    canvas.drawCircle(Offset(radius, radius), radius, outerCirclePaint);

    // Calculate angle based on the value
    final double angle = 2 * pi * (value / 240);

    // Draw the filled portion of the whole circle meter
    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      -pi / 2,
      2 * pi,
      true,
      innerCirclePaint,
    );

    // Draw indicator line from center to value (skip if value is 0)
    if (value != 0) {
      final double indicatorStartX = radius;
      final double indicatorStartY = radius;
      final double indicatorEndX = radius + radius * cos(-pi / 2 + angle);
      final double indicatorEndY = radius + radius * sin(-pi / 2 + angle);
      canvas.drawLine(Offset(indicatorStartX, indicatorStartY), Offset(indicatorEndX, indicatorEndY), indicatorPaint);
    }

    // Draw tick marks along the circumference and labels inside the circle
    const double tickLength = 10.0;
    const double labelOffset = 20.0;
    const double smallTickLength = 5.0;
    for (int i = 0; i < 240; i += 20) {
      final double tickAngle = 2 * pi * (i / 240);
      final double startX = radius + (radius - tickLength) * cos(tickAngle);
      final double startY = radius + (radius - tickLength) * sin(tickAngle);
      final double endX = radius + (radius + tickLength) * cos(tickAngle);
      final double endY = radius + (radius + tickLength) * sin(tickAngle);

      canvas.drawLine(Offset(startX, startY), Offset(endX, endY), tickPaint);

      // Add small separation lines between tick marks
      if (i != 0 && i != 220) {
        // Add 4 small ticks between each major tick mark
        for (int j = 1; j <= 4; j++) {
          final double smallTickStartX =
              radius + (radius - tickLength + (j * (tickLength / 4))) * cos(tickAngle);
          final double smallTickStartY =
              radius + (radius - tickLength + (j * (tickLength / 4))) * sin(tickAngle);
          final double smallTickEndX =
              radius + (radius - tickLength + (j * (tickLength / 4)) + smallTickLength) *
                  cos(tickAngle);
          final double smallTickEndY =
              radius + (radius - tickLength + (j * (tickLength / 4)) + smallTickLength) *
                  sin(tickAngle);
          canvas.drawLine(
              Offset(smallTickStartX, smallTickStartY), Offset(smallTickEndX, smallTickEndY), smallTickPaint);
        }
      }

      // Adjust the label position to avoid overlapping at the last label
      final double labelX = i == 220 ? radius + 20 : radius + (radius - labelOffset) * cos(tickAngle);
      final double labelY = i == 220 ? radius + 10 : radius + (radius - labelOffset) * sin(tickAngle);

      TextPainter labelPainter = TextPainter(
        text: TextSpan(
          text: i.toString(),
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      )..layout();

      labelPainter.paint(canvas, Offset(labelX - labelPainter.width / 2, labelY - labelPainter.height / 2));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}