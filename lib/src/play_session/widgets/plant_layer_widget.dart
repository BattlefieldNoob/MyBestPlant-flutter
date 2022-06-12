import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/plant_info_change_notifier.dart';

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
          child: Center(
            child: PlantInfoGridWidget(),
          ),
        ),
        flex: 4,
      ),
      Flexible(child: Container(), flex: 1),
    ]);
  }
}

class PlantInfoGridWidget extends StatelessWidget {
  const PlantInfoGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = context.watch<PlantInfoChangeNotifier>();

    return GridView.builder(
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, i) {
          switch (i) {
            case 0:
              return PlantInfoProgressWidget(
                  name: "Secchezza", value: info.dryness);
            case 1:
              return PlantInfoProgressWidget(
                  name: "Marciume", value: info.rottenness);
            case 2:
              return PlantInfoProgressWidget(
                  name: "Stress", value: info.stress);
            case 3:
              return PlantInfoProgressWidget(
                  name: "Parassiti", value: info.parasite);
            default:
              return Container(
                color: Colors.red,
              );
          }
        });
  }
}

class PlantInfoProgressWidget extends StatelessWidget {
  final String name;
  final double value;

  const PlantInfoProgressWidget({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(name),
              SizedBox(
                height: 32,
                child: LinearProgressIndicator(value: value),
              )
            ],
          ),
        ));
  }
}
