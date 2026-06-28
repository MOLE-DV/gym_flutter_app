import 'package:gym_app/data/exercise.dart';

class Plan {
  final String id;
  final List<Exercise> exercises;

  Plan({required this.id, required this.exercises});
}
