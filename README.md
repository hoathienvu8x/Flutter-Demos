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
