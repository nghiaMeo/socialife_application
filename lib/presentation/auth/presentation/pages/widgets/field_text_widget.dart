import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_networking_app/core/configs/assets/app_vectors.dart';

class FieldTextWidget extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool isPassword;

  const FieldTextWidget({
    super.key,
    required this.icon,
    required this.hint,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text(
          "Name",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        // Row chứa icon + textfield
        Row(
          children: [
            SvgPicture.asset(AppVectors.user),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: hint,
                  border: InputBorder.none, // bỏ viền
                ),
              ),
            ),
          ],
        ),
        const Divider(
          // underline giống hình
          thickness: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}
