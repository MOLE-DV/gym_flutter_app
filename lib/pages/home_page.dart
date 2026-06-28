import 'package:flutter/material.dart';
import 'package:gym_app/data/data_provider.dart';
import 'package:gym_app/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // provide settings and app data using providers
    return Consumer2<SettingsProvider, DataProvider>(
      builder: (context, settingModelValues, dataModelValues, child) =>
          // making sure that content will not be obstructed by round screen edges or thing on the screen like for ex.: dynamic island.
          SafeArea(
            // disable the safe area for the bottom of the screen
            bottom: false,
            child: Scaffold(
              body: ListView.separated(
                itemBuilder: (context, index) =>
                    Column(children: [Card(child: Text("dsa"))]),
                separatorBuilder: (context, index) => Divider(height: 20),
                itemCount: 5,
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
          ),
    );
  }
}
