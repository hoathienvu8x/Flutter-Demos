import 'package:flutter/material.dart';

// import 'app.dart';
// import 'day_night/day_night_switch.dart';
import 'appearance/appearance_demo.dart';
import 'appearance/shared_preference.dart';

void main() async {
  // runApp(const MyApp());
  // runApp(const DayNightApp());
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager.instance.init();
  runApp(const AppearanceDemoApp());
}
