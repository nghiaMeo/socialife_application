import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

import 'package:social_networking_app/core/configs/widgets/providers/custom_loading_provider.dart';

import '../theme/app_colors.dart';

class CustomLoadingCircle extends StatelessWidget {
  final double size;
  final double strokeWidth;

  const CustomLoadingCircle({
    super.key,
    this.size = 80,
    this.strokeWidth = 6,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CustomLoadingProvider>(context);

    return Center(
      child: AnimatedBuilder(
        animation: provider.animationController,
        builder: (context, child) {
          return Transform.rotate(
            angle: provider.angle,
            child: CustomPaint(
              size: Size(size, size),
              painter: _LoadingPainter(strokeWidth: strokeWidth),
            ),
          );
        },
      ),
    );
  }
}

class _LoadingPainter extends CustomPainter {
  final double strokeWidth;

  _LoadingPainter({required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = (size.width - strokeWidth) / 2;

    final rect = Rect.fromCircle(
      center: size.center(Offset.zero),
      radius: radius,
    );

    final gradient = SweepGradient(
      startAngle: 1,
      endAngle: math.pi * 2,
      colors: [
        Colors.white,
        AppColors.loadingCircle,
      ],
      stops: const [0, 1],
    );

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(rect, 0, math.pi * 2, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
