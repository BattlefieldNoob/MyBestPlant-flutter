import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:game_template/src/providers/plant_info.dart';

const MIN_VALUE = 0.0;
const MAX_VALUE = 1.0;
const DAYS_IMPROVEMENT_MULTIPLY_RATIO = 140;
const NEXT_DAY_SECONDS = 5;

class PlantInfoChangeNotifier extends ChangeNotifier {
  int passedDays = 0;
  double dryness = 0.5;
  double rottenness = 0.5;
  double stress = 0.5;
  double parasite = 0.5;

  void SetValues({
    required double dryness,
    required double rottenness,
    required double stress,
    required double parasite
  }) {
    this.dryness = dryness.clamp(MIN_VALUE, MAX_VALUE);
    this.rottenness = rottenness.clamp(MIN_VALUE, MAX_VALUE);
    this.stress = stress.clamp(MIN_VALUE, MAX_VALUE);
    this.parasite = parasite.clamp(MIN_VALUE, MAX_VALUE);
    notifyListeners();
  }

  void _nextDay() {
    this.passedDays += 1;
    print('days: ${this.passedDays}');
    notifyListeners();
    _applyAction(DAY_PASS);
  }

  void init() {
    this.passedDays = 0;
    print('timer start');
    Timer.periodic(
        Duration(seconds: NEXT_DAY_SECONDS),
            (_) => this._nextDay()
    );
    notifyListeners();
  }

  void _applyAction(PlantInfo action) {
    double multiplayer =  1.0 + ( this.passedDays / DAYS_IMPROVEMENT_MULTIPLY_RATIO);
    this.SetValues(
        dryness: this.dryness + (multiplayer * action.dryness),
        rottenness: this.rottenness + (multiplayer * action.rottenness),
        stress: this.stress + (multiplayer * action.stress),
        parasite: this.parasite + (multiplayer * action.parasite)
    );
  }

  void Watering() => _applyAction(WATERING);

  void Fertilize() => _applyAction(FERTILIZE);

  void ParasiteRemoval() => _applyAction(PARASITE_REMOVAL);

}
