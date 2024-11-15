import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'preference_manager.dart';
import 'shared_preference.dart';
import 'themes.dart';

/// Appearance
class Appearance extends InheritedWidget {
  /// Getter to get saved [ThemeMode].
  ///
  /// If [mode] is optional, default value is [ThemeMode.system].
  final ThemeMode mode;

  /// Setter to save [ThemeMode].
  ///
  /// Saved ThemeMode is persisted on restart of app.
  final ValueChanged<ThemeMode> setMode;

  /// Getter to get current [Brightness] for [CupertinoApp]
  ///
  /// it is used in [CupertinoThemeData] [brightness] to set automatically light/dark brightness on theme change.
  final Brightness? cupertinoBrightness;

  const Appearance({
    required this.mode,
    required this.setMode,
    required super.child,
    this.cupertinoBrightness,
    super.key,
    // })  : assert(mode != null),
  });

  @override
  bool updateShouldNotify(Appearance oldWidget) => mode != oldWidget.mode;

  static Appearance? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Appearance>();
}

mixin AppearanceState<T extends StatefulWidget> on State<T> {
  final SharedPreferences _sharedPreferences =
      SharedPreferencesManager.instance.preference;

  ThemeMode? _mode;

  void _load() {
    // getting themeMode
    String themeMode = PreferenceManager(_sharedPreferences).themeMode;
    _mode = themeModeFromString(themeMode);
  }

  void setMode(ThemeMode mode) {
    setState(() {
      _mode = mode;
    });

    // set themeMode in SharedPreferences
    PreferenceManager(_sharedPreferences).themeMode = themeModeToString(mode);
  }

  Brightness? get cupertinoBrightness {
    switch (_mode) {
      case ThemeMode.system:
        return Brightness.light; //Brightness.light;
      case ThemeMode.light:
        return Brightness.light;
      case ThemeMode.dark:
        return Brightness.dark;
      default:
        return null;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Doing this here instead of [initState] because we need to pull in an
    // InheritedWidget
    _load();
  }

  // ignore: non_constant_identifier_names
  Widget BuildWithAppearance({
    ThemeMode? initial,
    required WidgetBuilder builder,
  }) {
    return Appearance(
      mode: _mode ?? initial ?? ThemeMode.system,
      setMode: setMode,
      cupertinoBrightness: cupertinoBrightness,
      child: Builder(builder: builder),
    );
  }
}

//  Extensions for ThemeMode

String? themeModeToString(ThemeMode value) {
  switch (value) {
    case ThemeMode.system:
      return ThemeConstants.kThemeModeSystem;
    case ThemeMode.light:
      return ThemeConstants.kThemeModeLight;
    case ThemeMode.dark:
      return ThemeConstants.kThemeModeDark;
  }
}

ThemeMode? themeModeFromString(String value) {
  switch (value) {
    case ThemeConstants.kThemeModeSystem:
      return ThemeMode.system;
    case ThemeConstants.kThemeModeLight:
      return ThemeMode.light;
    case ThemeConstants.kThemeModeDark:
      return ThemeMode.dark;
  }
  return null;
}
