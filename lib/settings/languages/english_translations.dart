import 'package:gym_app/settings/languages/translations.dart';

class EnglishTranslations extends Translations {
  @override
  String get goodMorning => "Good morning";

  @override
  String get goodAfternoon => "Good afternoon";

  @override
  String get goodEvening => "Good evening";

  @override
  String get motivationText => "Ready to crush your goals?";

  @override
  String get home => "Home";

  @override
  String get plans => "Plans";

  @override
  String get stats => "Stats";

  @override
  String get settings => "Settings";

  @override
  List<String> get weekDayNamesShort => <String>[
    "MON",
    "TUE",
    "WED",
    "THU",
    "FRI",
    "SAT",
    "SUN",
  ];

  @override
  String get thisWeek => "THIS WEEK";

  @override
  String Function(int, int) get workoutProgress =>
      (int progress, int goal) => '$progress of $goal workouts completed';

  @override
  String get nextWorkout => "NEXT WORKOUT";

  @override
  String get exercises => "exercises";

  @override
  String get startWorkout => "Start workout";

  @override
  String get selectWorkout => "Select workout";

  @override
  String get allPlansHaveBeenCompleted => "All plans have been completed! 🔥";

  @override
  String get continueMessage =>
      "But if you are not satisfied you can continue...";
}
