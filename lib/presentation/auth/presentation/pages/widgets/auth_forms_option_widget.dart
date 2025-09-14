import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/configs/theme/app_typography.dart';
import '../../provider/checkbox_provider.dart';

class AuthFormsOptionWidget extends StatelessWidget {
  const AuthFormsOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer<CheckboxProvider>(
          builder: (context, checkboxProvider, _) {
            return Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                side: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                checkColor: Colors.white,
                activeColor: Colors.blue,
                value: checkboxProvider.isChecked,
                onChanged: (value) {
                  if (value != null) {
                    checkboxProvider.toggle(value);
                  }
                });
          },
        ),
        AppTypography.text10Regular(text: "Remember me", color: Colors.black),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: AppTypography.text10Regular(
              text: "Forgot Password", color: Colors.black),
        ),
      ],
    );
  }
}
