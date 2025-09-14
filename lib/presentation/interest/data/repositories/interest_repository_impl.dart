import 'package:social_networking_app/presentation/interest/domain/repositories/interest_repository.dart';

import '../../domain/entities/interest.dart';

class InterestRepositoryImpl implements InterestRepository {
  final List<Interest> _interests = [
    // Professional
    Interest(name: "Tech", category: "Professional"),
    Interest(name: "Artificial Intelligence", category: "Professional"),
    Interest(name: "Travel", category: "Professional"),
    Interest(name: "Politics", category: "Professional"),
    Interest(name: "UX Design", category: "Professional"),
    Interest(name: "Script Writing", category: "Professional"),
    Interest(name: "Music", category: "Professional"),
    Interest(name: "Business", category: "Professional"),
    Interest(name: "Finance", category: "Professional"),

    // Casual
    Interest(name: "Tech", category: "Casual"),
    Interest(name: "Artificial Intelligence", category: "Casual"),
    Interest(name: "Travel", category: "Casual"),
    Interest(name: "Politics", category: "Casual"),
    Interest(name: "UX Design", category: "Casual"),
    Interest(name: "Script Writing", category: "Casual"),
    Interest(name: "Music", category: "Casual"),
    Interest(name: "Business", category: "Casual"),
    Interest(name: "Finance", category: "Casual"),

    // Social Cause
    Interest(name: "Tech", category: "Social Cause"),
    Interest(name: "Artificial Intelligence", category: "Social Cause"),
    Interest(name: "Travel", category: "Social Cause"),
    Interest(name: "Politics", category: "Social Cause"),
    Interest(name: "UX Design", category: "Social Cause"),
    Interest(name: "Script Writing", category: "Social Cause"),
    Interest(name: "Music", category: "Social Cause"),
    Interest(name: "Business", category: "Social Cause"),
    Interest(name: "Finance", category: "Social Cause"),
  ];

  @override
  List<Interest> getInterest() => _interests;

  @override
  Interest toggleInterest(Interest interest) {
    final index = _interests.indexWhere(
      (i) => i.name == interest.name && i.category == interest.category,
    );
    if (index != -1) {
      _interests[index] = _interests[index].copyWith(
        isSelected: !interest.isSelected,
      );
      return _interests[index];
    }
    return interest;
  }
}
