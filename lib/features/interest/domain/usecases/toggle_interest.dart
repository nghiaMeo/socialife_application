import 'package:social_networking_app/features/interest/domain/entities/interest.dart';
import 'package:social_networking_app/features/interest/domain/repositories/interest_repository.dart';

class ToggleInterest {
  final InterestRepository repository;

  ToggleInterest(this.repository);

  Interest call(Interest interest) {
    return repository.toggleInterest(interest);
  }
}
