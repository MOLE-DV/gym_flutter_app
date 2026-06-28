import 'package:gym_app/hive/plan.dart';
import 'package:gym_app/hive/workout_log.dart';
import 'package:hive/hive.dart';

part 'data_model.g.dart';

@HiveType(typeId: 4)
class DataModel {
  @HiveField(0)
  final List<Plan> plans;

  @HiveField(1)
  final List<WorkoutLog> workoutLogs;

  DataModel({required this.plans, required this.workoutLogs});
}
