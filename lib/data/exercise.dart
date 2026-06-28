class Exercise {
  final String name;
  final String force;
  final String level;
  final String mechanic;
  final String equipment;
  final List<String> primaryMuscles;
  final List<String> secondaryMuscles;
  final List<String> instructions;
  final String category;
  final List<String> images;
  final String id;

  Exercise({
    required this.name,
    required this.force,
    required this.level,
    required this.mechanic,
    required this.equipment,
    required this.primaryMuscles,
    required this.secondaryMuscles,
    required this.instructions,
    required this.category,
    required this.images,
    required this.id,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      name: json['name'],
      force: json['force'],
      level: json["level"],
      mechanic: json["mechanic"],
      equipment: json["equipment"],
      primaryMuscles: json["primaryMuscles"],
      secondaryMuscles: json["secondaryMuscles"],
      instructions: json["instructions"],
      category: json["category"],
      images: json["images"],
      id: json["id"],
    );
  }
}
