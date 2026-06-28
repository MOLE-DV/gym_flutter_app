import 'package:flutter/material.dart';
import 'package:gym_app/data/plan.dart';
import 'package:gym_app/data/workout_log.dart';
import 'package:hive/hive.dart';

class DataProvider extends ChangeNotifier {
  final List<Plan> plans;
  final List<WorkoutLog> workoutLogs;

  DataProvider({required this.plans, required this.workoutLogs});

  final _box = Hive.box('data');

  void addPlan(Plan plan) async {
    plans.add(plan);

    await _box.put('plans', plan);

    notifyListeners();
  }

  void removePlan(String id) async {
    plans.removeWhere((Plan plan) => plan.id == id);

    notifyListeners();
  }

  void addLog(Plan plan) async {
    WorkoutLog workoutLog = WorkoutLog(plan: plan, dateTime: DateTime.now());
    workoutLogs.add(workoutLog);

    await _box.put("workout_logs", workoutLog);

    notifyListeners();
  }
}
