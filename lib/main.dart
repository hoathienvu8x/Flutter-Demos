import 'package:flutter/material.dart';
// import 'daynight/daynight.dart';
import 'appearance/appearance_demo.dart';
import 'appearance/shared_preference.dart';

void main() async {
  // runApp(const DayNightApp());
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager.instance.init();
  runApp(const AppearanceDemoApp());
}
