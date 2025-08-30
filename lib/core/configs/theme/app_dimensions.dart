import 'package:flutter/cupertino.dart';

class AppDimensions {
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double w(BuildContext context, double value) {
    return width(context) * (value / 100);
  }

  static double h(BuildContext context, double value) {
    return height(context) * (value / 100);
  }
}
