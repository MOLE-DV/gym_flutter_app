import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gym_app/data/data_provider.dart';
import 'package:gym_app/data/exercises.dart';
import 'package:gym_app/hive/data_model.dart';
import 'package:gym_app/hive/exercise.dart';
import 'package:gym_app/hive/plan.dart';
import 'package:gym_app/hive/workout_log.dart';
import 'package:gym_app/settings/settings_provider.dart';
import 'package:gym_app/utils/custom_card.dart';
import 'package:gym_app/utils/next_workout.dart';
import 'package:gym_app/utils/status_bar.dart';
import 'package:gym_app/utils/workout_calendar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String generateRandomString(int len) {
  var r = Random();
  const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
}

class _HomePageState extends State<HomePage> {
  final int _hour = DateTime.now().hour;

  @override
  Widget build(BuildContext context) {
    // provide settings and app data using providers
    return Consumer2<SettingsProvider, DataProvider>(
      builder: (context, settingModelValues, dataModelValues, child) => Scaffold(
        body: CustomScrollView(
          slivers: [
            // making sure that app bar will not be obstructed by round screen edges or thing on the screen like for ex.: dynamic island.
            SliverSafeArea(
              sliver: SliverAppBar(
                actionsPadding: const EdgeInsets.only(right: 5),
                title: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // title based on the time
                      Text(
                        '${_hour < 13
                            ? settingModelValues.translations.goodAfternoon
                            : _hour < 18
                            ? settingModelValues.translations.goodAfternoon
                            : settingModelValues.translations.goodEvening}, Max! 👋',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),

                      // motivational message
                      Text(
                        settingModelValues.translations.motivationText,
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.transparent,
                floating: true,
                actions: [
                  // settings
                  IconButton(
                    onPressed: () => print("ds"),
                    icon: Icon(Icons.settings_outlined),
                  ),

                  //notifications
                  IconButton(
                    onPressed: () => print("ds"),
                    icon: Icon(Icons.notifications_outlined),
                  ),
                ],
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              sliver: SliverList.list(
                children: [
                  CustomCard(
                    title: settingModelValues.translations.nextWorkout,
                    children: [NextWorkout()],
                  ),

                  // workout calendar card
                  CustomCard(
                    title: settingModelValues.translations.thisWeek,
                    children: [WorkoutCalendar(), StatusBar()],
                  ),

                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () => dataModelValues.addPlan(
                          Plan(name: generateRandomString(5), exercises: []),
                        ),
                        child: Text("dodaj plan"),
                      ),
                      ElevatedButton(
                        onPressed: () => dataModelValues.removePlan(
                          dataModelValues.plans.last,
                        ),
                        child: Text("usuń plan"),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          List<WorkoutLog> workoutLogsThisWeek = dataModelValues
                              .getWorkoutLogsFromThisWeek();
                          Set<Plan> realizedPlans = workoutLogsThisWeek
                              .map((w) => w.plan)
                              .toSet();

                          List<Plan> unrealizedPlans = dataModelValues.plans
                              .where((p) => !realizedPlans.contains(p))
                              .toList();

                          if (unrealizedPlans.isNotEmpty) {
                            dataModelValues.addLog(unrealizedPlans.first);
                          }
                        },
                        child: Text("dodaj log"),
                      ),

                      ElevatedButton(
                        onPressed: () => dataModelValues.removeLog(
                          dataModelValues.workoutLogs.last,
                        ),
                        child: Text("usuń log"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

        // Bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: settingModelValues.translations.home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.notes),
              label: settingModelValues.translations.plans,
            ),
          ],
        ),
      ),
    );
  }
}
