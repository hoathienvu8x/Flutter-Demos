# A day night switch widget for Flutter

[DayNightSwitch](https://pub.dev/packages/day_night_switch/) -
[DayNightSwitch Source Code](https://github.com/divyanshub024/day_night_switch)

## Example

```dart
DayNightSwitch(
  value: val,
  moonImage: AssetImage('assets/daynight/moon.png'),
  sunImage: AssetImage('assets/daynight/sun.png'),
  sunColor: sunColor,
  moonColor: moonColor,
  dayColor: dayColor,
  nightColor: nightColor,
  onChanged: (value) {
    setState(() {
      val = value;
    });
  },
)
```

![](https://github.com/hoathienvu8x/Flutter-Demos/blob/master/images/day_night_switch.gif?raw=true)

## LICENCE

```
Copyright 2019 Divyanshu Bhargava

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

# Flutter package to implement Light, Dark and Sytem Theme mode, and persist it on restart of app.

[Appearance](https://pub.dev/packages/appearance) -
[Appearance Source Code](https://github.com/alihaider78222/appearance)

## Example

1. Initialize `SharedPreferencesManager` singleton for `SharedPreference` and add it before `runApp()` method.

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager.instance.init();
  runApp(const MyApp());
}
```

2. extend your root class with `AppearanceState` using keyword `with`.

```dart
class _MyAppState extends State<MyApp> with AppearanceState { }
```

3. Wrap your `MaterialApp` or `CupertinoApp` with  **BuildWithAppearance**

```dart
BuildWithAppearance(
    initial: ThemeMode.light, // optional : default value is [ThemeMode.system]
    builder: (context) => MaterialApp()
);
```

### Using `MaterialApp`

```dart
BuildWithAppearance(
    initial: ThemeMode.light, // optional : default value is [ThemeMode.system]
    builder: (context) => MaterialApp(
        title: 'Appearance (Material Example)',
        themeMode: Appearance.of(context)?.mode,
        theme: ThemeData(
            brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
            brightness: Brightness.dark,
        ),
        home: const HomeMaterialPage(),
    ),
);
```

### Using `CupertinoApp`

```dart
BuildWithAppearance(
    initial: ThemeMode.light, // optional : default value is [ThemeMode.system]
    builder: (context) {
        return CupertinoApp(
            title: 'Appearance (Cupertino Example)',
            theme: CupertinoThemeData(
                brightness: Appearance.of(context)?.cupertinoBrightness!,
            ),
            localizationsDelegates: const [
                DefaultMaterialLocalizations.delegate,
                DefaultCupertinoLocalizations.delegate,
                DefaultWidgetsLocalizations.delegate,
            ],
            home: HomeCupertinoPage(),
        );
    },
);
```

![](https://github.com/hoathienvu8x/Flutter-Demos/blob/master/images/demo_1.gif?raw=true)
![](https://github.com/hoathienvu8x/Flutter-Demos/blob/master/images/demo_2.gif?raw=true)

## LICENCE

```
MIT License

Copyright (c) 2023 Ali Haider

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

# Google Nav Bar

[Google Nav Bar](https://pub.dev/packages/google_nav_bar) -
[Google Nav Bar Source Code](https://github.com/sooxt98/google_nav_bar)

## Example

```dart
GNav(
  rippleColor: Colors.grey[800], // tab button ripple color when pressed
  hoverColor: Colors.grey[700], // tab button hover color
  haptic: true, // haptic feedback
  tabBorderRadius: 15, 
  tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
  tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
  tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
  curve: Curves.easeOutExpo, // tab animation curves
  duration: Duration(milliseconds: 900), // tab animation duration
  gap: 8, // the tab button gap between icon and text 
  color: Colors.grey[800], // unselected icon color
  activeColor: Colors.purple, // selected icon and text color
  iconSize: 24, // tab button icon size
  tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
  tabs: [
    GButton(
      icon: LineIcons.home,
      text: 'Home',
    ),
    GButton(
      icon: LineIcons.heart_o,
      text: 'Likes',
    ),
    GButton(
      icon: LineIcons.search,
      text: 'Search',
    ),
    GButton(
      icon: LineIcons.user,
      text: 'Profile',
    )
  ]
)
```

![](https://github.com/hoathienvu8x/Flutter-Demos/blob/master/images/google_nav.gif?raw=true)

## LICENCE

```
MIT License

Copyright (c) 2019 Soo Xiao Tong

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
