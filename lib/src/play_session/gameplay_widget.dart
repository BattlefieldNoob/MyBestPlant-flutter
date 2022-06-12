import 'package:flutter/material.dart';

import 'widgets/day_night_layer_widget.dart';
import 'widgets/plant_layer_widget.dart';
import 'widgets/ui_layer_widget.dart';

class GameplayWidget extends StatelessWidget {
  const GameplayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [DayNightLayerWidget(), PlantLayerWidget(), UILayerWidget()],
    );
  }
}
