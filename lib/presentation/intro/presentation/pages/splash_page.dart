import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_networking_app/core/configs/assets/app_vectors.dart';
import 'package:social_networking_app/core/configs/theme/app_colors.dart';
import 'package:social_networking_app/core/configs/theme/app_typography.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? AppColors.lightSkyBlue
              : AppColors.darkTheme,
      body: SafeArea(
        child: Center(
            child: Stack(
          children: [
            Center(
              child: SvgPicture.asset(AppVectors.logo),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  AppTypography.text12Regular(
                      text: "from", color: Colors.black),
                  AppTypography.text20Medium(
                    text: "NHN",
                    color: AppColors.darkMidnightBlue,
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
