import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_networking_app/core/configs/assets/app_vectors.dart';
import 'package:social_networking_app/core/configs/theme/app_colors.dart';

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
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset(AppVectors.logo),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: Text("from"),
            ),
          )
        ],
      ),
    );
  }
}
