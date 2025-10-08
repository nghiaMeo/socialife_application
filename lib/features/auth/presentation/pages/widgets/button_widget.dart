import 'package:flutter/material.dart';

import '../../../../../core/configs/theme/app_colors.dart';
import '../../../../../core/configs/theme/app_typography.dart';

class ButtonWidget extends StatelessWidget {
  final String text;

  const ButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          // TODO: handle signup
        },
        child: AppTypography.text16Medium(
            text: text, color: AppColors.lightTheme),
      ),
    );
  }
}
