import 'package:gym_app/settings/languages/translations.dart';

class PolishTranslations extends Translations {
  @override
  String get goodMorning => "Dzień dobry";

  @override
  String get goodAfternoon => "Dzień dobry";

  @override
  String get goodEvening => "Dobry wieczór";

  @override
  String get motivationText => "Gotowy osiągnąć swoje cele?";

  @override
  String get home => "Strona głowna";

  @override
  String get plans => "Plany";

  @override
  String get stats => "Statystyki";

  @override
  String get settings => "Ustawienia";

  @override
  List<String> get weekDayNamesShort => <String>[
    "PON",
    "WT",
    "ŚR",
    "CZW",
    "PT",
    "SOB",
    "NIEDZ",
  ];

  @override
  String get thisWeek => "TEN TYDZIEŃ";

  @override
  String Function(int, int) get workoutProgress =>
      (int progress, int goal) => 'Ukończono $progress z $goal treningów';

  @override
  String get nextWorkout => "NASTĘPNY TRENING";
  
  @override
  String get exercises => "ćwiczenia";

  @override
  String get startWorkout => "Rozpocznij trening";

  @override
  String get selectWorkout => "Wybierz trening";

  @override
  String get allPlansHaveBeenCompleted => "Wszystkie treningi zostały ukończone! 🔥";

  @override
  String get continueMessage => "Jeśli jednak nie jesteś zadowolony, możesz kontynuować...";

}
