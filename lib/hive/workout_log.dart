import 'package:gym_app/hive/plan.dart';
import 'package:hive/hive.dart';

part 'workout_log.g.dart';

@HiveType(typeId: 3)
class WorkoutLog {
  @HiveField(0)
  final Plan plan;

  @HiveField(1)
  final DateTime dateTime;

  WorkoutLog({required this.plan, required this.dateTime});
}
