import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/plant_info_change_notifier.dart';
import 'bottom_screen_button_widget.dart';
import 'central_bottom_screen_button_widget.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final plantInfo = context.read<PlantInfoChangeNotifier>();

    return SizedBox(
        height: 200,
        child: Container(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                BottomScreenButtonWidget(
                    name: "Check Parasite",
                    onPressed: plantInfo.ParasiteRemoval,
                    iconWidget: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/images/parasite.png',
                          scale: 2,
                        ))),
                Spacer(),
                CentralBottomScreenButtonWidget(
                    name: "Water",
                    onPressed: plantInfo.Watering,
                    iconWidget: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Image.asset(
                        'assets/images/watering_can.png',
                        scale: 1.2,
                      ),
                    )),
                Spacer(),
                BottomScreenButtonWidget(
                    name: "Fertilize",
                    onPressed: plantInfo.Fertilize,
                    iconWidget: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/images/concime.png',
                        scale: 2,
                      ),
                    )),
                Spacer()
              ]),
        ));
  }
}
