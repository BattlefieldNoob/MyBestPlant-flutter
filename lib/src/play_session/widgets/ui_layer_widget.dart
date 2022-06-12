import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/plant_info_change_notifier.dart';

class UILayerWidget extends StatelessWidget {
  const UILayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        UpperBarWidget(),
        Spacer(),
        BottomBarWidget(),
      ],
    );
  }
}

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final plantInfo = context.read<PlantInfoChangeNotifier>();

    return SizedBox(
        height: 120,
        child: Container(
          child: Row(children: [
            Spacer(),
            BottomScreenButtonWidget(
                onPressed: plantInfo.ParasiteRemoval,
                iconWidget: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/images/parasite.png',
                      scale: 2,
                    ))),
            Spacer(),
            BottomScreenButtonWidget(
                onPressed: plantInfo.Watering,
                iconWidget: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/images/watering_can.png',
                    scale: 1.2,
                  ),
                )),
            Spacer(),
            BottomScreenButtonWidget(
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

class UpperBarWidget extends StatelessWidget {
  const UpperBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: Container(
          color: Color(0xFFEFF7EB),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child:
                    Text.rich(TextSpan(text: "Welcome,\n", children: <TextSpan>[
                  new TextSpan(
                      text: 'Plant Lover',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                ])),
              ),
              Spacer(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    "Day,\n ${context.watch<PlantInfoChangeNotifier>().passedDays}",
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ));
  }
}

class BottomScreenButtonWidget extends StatelessWidget {
  final Widget iconWidget;
  final Function()? onPressed;

  const BottomScreenButtonWidget({
    Key? key,
    required this.iconWidget,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(2),
            backgroundColor: MaterialStateProperty.all(Color(0xFFEFF7EB)),
            shape: MaterialStateProperty.all(CircleBorder())),
        child: iconWidget);
  }
}
