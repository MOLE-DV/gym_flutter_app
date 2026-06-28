import 'package:gym_app/hive/exercise.dart';
import 'package:hive/hive.dart';

part 'plan.g.dart';

@HiveType(typeId: 2)
class Plan {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final List<Exercise> exercise;

  Plan({required this.id, required this.exercise});
}
