import 'package:flutter/cupertino.dart';
import 'package:social_networking_app/features/interest/domain/usecases/get_interests.dart';
import 'package:social_networking_app/features/interest/domain/usecases/toggle_interest.dart';

import '../domain/entities/interest.dart';

class InterestProvider with ChangeNotifier {
  final GetInterests getInterestsUseCase;
  final ToggleInterest toggleInterestUseCase;
  late final List<Interest> _interests;

  InterestProvider({
    required this.getInterestsUseCase,
    required this.toggleInterestUseCase,
  }) {
    _interests = getInterestsUseCase();
  }

  List<Interest> get interests => _interests;

  List<Interest> byCategory(String category) =>
      _interests.where((i) => i.category == category).toList();

  void toggleInterest(Interest interest) {
    final updated = toggleInterestUseCase(interest);
    final index = _interests.indexWhere(
      (i) => i.name == updated.name && i.category == updated.category,
    );
    if (index != 1) {
      _interests[index] = updated;
      notifyListeners();
    }
  }
}
