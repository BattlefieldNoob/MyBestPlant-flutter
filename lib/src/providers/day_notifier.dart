import 'dart:async';

import 'package:flutter/widgets.dart';

const NEXT_DAY_SECONDS = 5;

// TODO: use this notifier instead of PlantInfoChangeNotifier
class DayNotifier extends ChangeNotifier {
  int passedDays = 0;

  void NextDay() {
    this.passedDays += 1;
    print('days: ${this.passedDays}');
    notifyListeners();
  }

  void init() {
    this.passedDays = 0;
    print('timer start');
    Timer.periodic(
        Duration(seconds: NEXT_DAY_SECONDS),
            (_) => this.NextDay()
    );
    notifyListeners();
  }
}
