import 'package:flutter/material.dart';

import 'plant_layer/plant_info_grid_widget.dart';

class PlantLayerWidget extends StatelessWidget {
  const PlantLayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.vertical, children: [
      Flexible(child: Container(), flex: 1),
      Flexible(
        child: Container(
          //color: Colors.green,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(48.0),
                child: Image.asset('assets/images/plant.png'),
              ),
              Center(
                child: PlantInfoGridWidget(),
              )
            ],
          ),
        ),
        flex: 4,
      ),
      Flexible(child: Container(), flex: 1),
    ]);
  }
}
