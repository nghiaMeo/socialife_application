import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_networking_app/core/configs/assets/app_vectors.dart';
import 'package:social_networking_app/core/configs/theme/app_dimensions.dart';
import 'package:social_networking_app/core/configs/theme/app_typography.dart';

import '../../../../core/configs/theme/app_colors.dart';
import '../../../../core/navigation/app_routes.dart';
import '../../../../core/navigation/navigation_service.dart';

class IntroducePage extends StatelessWidget {
  const IntroducePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(color: AppColors.lightSkyBlue),
          ),
          Wrap(
            spacing: 0,
            runSpacing: 0,
            children: List.generate(
              20,
              (index) => SvgPicture.asset(
                AppVectors.backgroundIcons,
                width: 170,
                height: 170,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              height: AppDimensions.h(context, 50),
              AppVectors.drawWhite,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Spacer(),
              SvgPicture.asset(
                AppVectors.logo,
                height: 120,
              ),
              const Spacer(),
              AppTypography.text24Regular(
                  text:
                      "Discover & join groups easily\nthat fit your needs perfectly!",
                  color: AppColors.darkMidnightBlue),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  NavigationService.pushNamedAndRemoveUntil(AppRoutes.interest);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.dodgerBlue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 14),
                ),
                child: AppTypography.text16Medium(
                  text: "Get Started",
                  color: AppColors.lightTheme,
                ),
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
