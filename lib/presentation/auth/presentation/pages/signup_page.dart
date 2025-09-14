import 'package:flutter/material.dart';
import 'package:social_networking_app/core/configs/assets/app_vectors.dart';
import 'package:social_networking_app/core/configs/theme/app_colors.dart';
import 'package:social_networking_app/core/configs/theme/app_typography.dart';
import 'package:social_networking_app/presentation/auth/presentation/pages/widgets/auth_forms_option_widget.dart';
import 'package:social_networking_app/presentation/auth/presentation/pages/widgets/button_widget.dart';
import 'package:social_networking_app/presentation/auth/presentation/pages/widgets/field_text_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics()
            .applyTo(const BouncingScrollPhysics()),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTypography.text24Medium(
                    text: "Let's start here", color: AppColors.darkTheme),
                const SizedBox(height: 30),

                /// Name
                FieldTextWidget(
                  icon: AppVectors.user,
                  hint: "Enter Name",
                  label: "Name",
                ),
                const SizedBox(height: 10),

                /// Email
                FieldTextWidget(
                  icon: AppVectors.user,
                  hint: "Enter Email",
                  label: "Email",
                ),
                const SizedBox(height: 10),

                /// Username
                FieldTextWidget(
                  icon: AppVectors.user,
                  hint: "Enter Username",
                  label: "Username",
                ),
                const SizedBox(height: 10),

                /// Password
                FieldTextWidget(
                  icon: AppVectors.lockPassword,
                  hint: "Type in your password",
                  isPassword: true,
                  label: "Password",
                ),
                const SizedBox(height: 10),
                FieldTextWidget(
                  icon: AppVectors.lockPassword,
                  hint: "Re-type your password",
                  label: "Re-enter Password",
                  isPassword: true,
                ),
                AuthFormsOptionWidget(),
                const SizedBox(height: 20),

                /// Sign Up Button
                ButtonWidget(text: "Sign Up")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
