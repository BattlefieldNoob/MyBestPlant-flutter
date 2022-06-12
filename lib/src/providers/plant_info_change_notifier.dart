import 'package:flutter/widgets.dart';

class PlantInfoChangeNotifier extends ChangeNotifier {
  double dryness = 0.5;
  double rottenness = 0.5;
  double stress = 0.5;
  double parasite = 0.5;

  void SetValues(
      double dryness, double rottenness, double stress, double parasite) {
    this.dryness = dryness;
    this.rottenness = rottenness;
    this.stress = stress;
    this.parasite = parasite;
    notifyListeners();
  }
}
