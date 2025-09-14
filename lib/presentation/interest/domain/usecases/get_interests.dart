import 'package:social_networking_app/presentation/interest/domain/entities/interest.dart';
import 'package:social_networking_app/presentation/interest/domain/repositories/interest_repository.dart';

class GetInterests {
  final InterestRepository repository;

  GetInterests(this.repository);

  List<Interest> call() => repository.getInterest();
}
