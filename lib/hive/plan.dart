import 'package:gym_app/hive/exercise.dart';
import 'package:hive/hive.dart';

part 'plan.g.dart';

@HiveType(typeId: 2)
class Plan {
  @HiveField(0)
  final String name;

  @HiveField(2)
  final List<Exercise> exercises;

  Plan({required this.name, required this.exercises});
}
