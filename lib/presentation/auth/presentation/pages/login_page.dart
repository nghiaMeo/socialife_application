import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:social_networking_app/core/navigation/app_router.dart';
import 'package:social_networking_app/presentation/auth/presentation/pages/widgets/auth_forms_option_widget.dart';
import 'package:social_networking_app/presentation/auth/presentation/pages/widgets/button_widget.dart';
import 'package:social_networking_app/presentation/auth/presentation/pages/widgets/field_text_widget.dart';

import '../../../../core/configs/assets/app_vectors.dart';
import '../../../../core/configs/theme/app_colors.dart';
import '../../../../core/configs/theme/app_typography.dart';
import '../../../../core/navigation/app_routes.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../provider/checkbox_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CheckboxProvider(),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics()
            .applyTo(const BouncingScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              AppTypography.text24Medium(
                  text: "Discover your favorite spaces with us!",
                  color: AppColors.darkTheme),
              const SizedBox(height: 30),
              FieldTextWidget(
                icon: AppVectors.user,
                hint: "Type your username/email",
                label: "Username",
              ),
              const SizedBox(height: 10),
              FieldTextWidget(
                icon: AppVectors.lockPassword,
                hint: "Type your password",
                label: "Password",
                isPassword: true,
              ),
              const SizedBox(height: 10),
              AuthFormsOptionWidget(),
              ButtonWidget(text: "Login"),
              const SizedBox(height: 30),
              Center(child: _createAccountOrSignUpOther(context))
            ],
          ),
        ),
      )),
    );
  }

  Widget _createAccountOrSignUpOther(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            NavigationService.pushNamed(AppRoutes.signup);
          },
          style: TextButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            padding: EdgeInsets.zero,
            minimumSize: Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: AppTypography.text14Regular(
            text: "Create account",
            color: Colors.blue,
          ),
        ),
        AppTypography.text14Regular(
          text: "or",
          color: Colors.black,
        ),
        AppTypography.text14Regular(
          text: "Signup using",
          color: Colors.black,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: IconButton(
                style: IconButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () {},
                icon: SvgPicture.asset(AppVectors.apple),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: 40,
              width: 40,
              child: IconButton(
                style: IconButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () {},
                icon: SvgPicture.asset(AppVectors.google),
              ),
            ),
            const SizedBox(height: 50)
          ],
        )
      ],
    );
  }
}
