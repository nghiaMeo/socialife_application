import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_networking_app/core/configs/theme/app_colors.dart';
import 'package:social_networking_app/core/configs/theme/app_typography.dart';
import 'package:social_networking_app/core/navigation/app_routes.dart';

import '../../../core/navigation/navigation_service.dart';
import '../domain/entities/interest.dart';
import '../provider/interest_provider.dart';

class InterestSelectionPage extends StatelessWidget {
  const InterestSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<InterestProvider>(context);
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics()
              .applyTo(const BouncingScrollPhysics()),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(),
                AppTypography.text20Regular(
                  text: "Select at least 3 Interests to\npersonalize your feed",
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
                _buildCategory(
                  context,
                  "Professional",
                  provider.byCategory("Professional"),
                ),
                _buildCategory(
                  context,
                  "Casual",
                  provider.byCategory("Casual"),
                ),
                _buildCategory(
                  context,
                  "Social Cause",
                  provider.byCategory("Social Cause"),
                ),
                ElevatedButton(
                  onPressed: () {
                    NavigationService.pushNamed(AppRoutes.splash);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 46),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: AppTypography.text16Medium(
                      text: "Add", color: Colors.white),
                ),
                const SizedBox(height: 10),
                Center(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      print("DDDD");
                    },
                    child: AppTypography.decorateText(
                        text: "Skip",
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategory(
    BuildContext context,
    String category,
    List<Interest> items,
  ) {
    final provider = Provider.of<InterestProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTypography.text16Regular(text: category, color: Colors.black),
        Divider(
          height: 20,
          thickness: 1,
          endIndent: 120,
          color: Colors.black.withOpacity(0.25),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: items.map((interest) {
            final isSelected = interest.isSelected;
            return OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: isSelected ? Colors.blue : Colors.transparent,
                foregroundColor:
                    isSelected ? Colors.white : Colors.black.withOpacity(0.2),
                side: BorderSide(
                    color: isSelected
                        ? Colors.transparent
                        : Colors.black.withOpacity(0.3),
                    width: 1.3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
              ),
              onPressed: () => provider.toggleInterest(interest),
              child: AppTypography.text16Medium(
                  text: interest.name,
                  color:
                      isSelected ? Colors.white : AppColors.darkMidnightBlue),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
