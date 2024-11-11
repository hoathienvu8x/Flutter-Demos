import 'package:flutter/material.dart';
import 'package:myapp/appearance/shared_preference.dart';
// import 'myapp.dart';
// import 'google_nav_bar/google_nav_bar.dart';
// import 'day_night/day_night_switch.dart';
import 'appearance/appearance_demo.dart';

void main() async {
  // runApp(const MyApp());
  // runApp(const GoogleNavApp());
  // runApp(const DayNightApp());
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager.instance.init();
  runApp(const AppearanceDemoApp());
}
