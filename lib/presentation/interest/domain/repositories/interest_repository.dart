import 'package:social_networking_app/presentation/interest/domain/entities/interest.dart';

abstract class InterestRepository {
  List<Interest> getInterest();

  Interest toggleInterest(Interest interest);
}
