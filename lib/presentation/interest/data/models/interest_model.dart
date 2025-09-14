import 'package:social_networking_app/presentation/interest/domain/entities/interest.dart';

class InterestModel extends Interest {
  const InterestModel({
    required super.name,
    required super.category,
    super.isSelected,
  });
}
