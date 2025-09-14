import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_networking_app/core/configs/theme/app_colors.dart';
import 'package:social_networking_app/core/configs/theme/app_typography.dart';

class FieldTextWidget extends StatelessWidget {
  final String icon;
  final String label;
  final String hint;
  final bool isPassword;

  const FieldTextWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.hint,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        AppTypography.text16Medium(
          text: label,
          color: AppColors.darkTheme,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                style: GoogleFonts.roboto(
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                cursorColor: AppColors.darkMidnightBlue,
                obscureText: isPassword,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}
