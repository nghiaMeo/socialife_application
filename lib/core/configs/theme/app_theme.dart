import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.lightTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.darkTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
  );
}
