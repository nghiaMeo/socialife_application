import 'dart:math';

import 'package:flutter/cupertino.dart';

class CustomLoadingProvider with ChangeNotifier {
  late AnimationController animationController;
  final TickerProvider vsync;
  final bool clockwise;
  final Duration duration;

  CustomLoadingProvider({
    required this.vsync,
    this.clockwise = true,
    this.duration = const Duration(seconds: 2),
  }) {
    animationController = AnimationController(vsync: vsync, duration: duration)
      ..repeat();
  }

  double get angle => (clockwise ? 1 : -1) * animationController.value * 2 * pi;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
