import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/plant_info_change_notifier.dart';
import 'plant_info_progress_widget.dart';

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
