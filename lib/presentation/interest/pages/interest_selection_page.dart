import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_networking_app/core/configs/theme/app_typography.dart';

import '../domain/entities/interest.dart';
import '../provider/interest_provider.dart';

class InterestSelectionPage extends StatelessWidget {
  const InterestSelectionPage({super.key});

  Widget _buildCategory(
    BuildContext context,
    String category,
    List<Interest> items,
  ) {
    final provider = Provider.of<InterestProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTypography.text20Regular(text: category, color: Colors.black),
        const Divider(height: 20, thickness: 1),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: items.map((interest) {
            final isSelected = interest.isSelected;
            return OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: isSelected ? Colors.blue : Colors.transparent,
                foregroundColor: isSelected ? Colors.white : Colors.black,
                side: const BorderSide(color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
              ),
              onPressed: () => provider.toggleInterest(interest),
              child: Text(interest.name),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<InterestProvider>(context);

    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select at least 3 Interests to personalize your feed",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildCategory(
                context, "Professional", provider.byCategory("Professional")),
            _buildCategory(context, "Casual", provider.byCategory("Casual")),
            _buildCategory(
                context, "Social Cause", provider.byCategory("Social Cause")),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // TODO: handle add action
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48),
                backgroundColor: Colors.blue,
              ),
              child: const Text("Add"),
            ),
            const SizedBox(height: 8),
            Center(
              child: TextButton(
                onPressed: () {
                  // TODO: handle skip action
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
