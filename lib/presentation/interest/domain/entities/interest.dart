class Interest {
  final String name;
  final String category;
  final bool isSelected;

  const Interest({
    required this.name,
    required this.category,
    this.isSelected = false,
  });

  Interest copyWith({String? name, String? category, bool? isSelected}) {
    return Interest(
      name: name ?? this.name,
      category: category ?? this.category,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
