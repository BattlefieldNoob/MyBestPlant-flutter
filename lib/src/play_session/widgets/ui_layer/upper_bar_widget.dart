import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/plant_info_change_notifier.dart';

class UpperBarWidget extends StatelessWidget {
  const UpperBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        child: Material(
          color: Color(0xFFEFF7EB),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0)),
          elevation: 2,
          child: SafeArea(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text.rich(TextSpan(
                      text: "Welcome,\n",
                      style: TextStyle(fontSize: 24),
                      children: <TextSpan>[
                        new TextSpan(
                            text: 'Plant Lover',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                      ])),
                ),
                Spacer(),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      "Day\n ${context.watch<PlantInfoChangeNotifier>().passedDays}",
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          ),
        ));
  }
}
