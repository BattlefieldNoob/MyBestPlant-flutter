import 'package:flutter/material.dart';

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
          color: Colors.green,
        ),
        flex: 4,
      ),
      Flexible(child: Container(), flex: 1),
    ]);
  }
}
