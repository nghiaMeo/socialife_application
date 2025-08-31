import 'package:flutter/material.dart';
import 'package:social_networking_app/presentation/auth/presentation/pages/widgets/field_text_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Let's start here",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              /// Name
              FieldTextWidget(
                icon: Icons.person_outline,
                hint: "Enter Name",
              ),
              const SizedBox(height: 20),

              /// Email
              FieldTextWidget(
                icon: Icons.email_outlined,
                hint: "Enter Email",
              ),
              const SizedBox(height: 20),

              /// Username
              FieldTextWidget(
                icon: Icons.account_circle_outlined,
                hint: "Enter Username",
              ),
              const SizedBox(height: 20),

              /// Password
              FieldTextWidget(
                icon: Icons.lock_outline,
                hint: "Type in your password",
                isPassword: true,
              ),
              const SizedBox(height: 20),

              /// Re-enter Password
              FieldTextWidget(
                icon: Icons.lock_reset_outlined,
                hint: "Re-type your password",
                isPassword: true,
              ),
              const SizedBox(height: 20),

              /// Remember me + Forgot password
              Row(
                children: [
                  Checkbox(value: false, onChanged: (_) {}),
                  const Text("Remember me"),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      // TODO: Forgot password
                    },
                    child: const Text("Forgot Password"),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              /// Sign Up Button
              SizedBox(
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
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
