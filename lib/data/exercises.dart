import 'dart:convert';
import 'dart:io';

import 'package:gym_app/hive/exercise.dart';

class ExerciseRepository {
  final List<Exercise> exercises = [];
  Future<void> loadExercises(String directoryPath) async {
    final dir = Directory(directoryPath);

    await for (final entity in dir.list()) {
      if (entity is File && entity.path.endsWith('.json')) {
        final jsonString = await entity.readAsString();
        final jsonData = jsonDecode(jsonString);

        exercises.add(Exercise.fromJson(jsonData));
      }
    }
  }
}
