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
        SafeArea(child: BottomBarWidget()),
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

class UpperBarWidget extends StatelessWidget {
  const UpperBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 110,
        child: Container(
          color: Color(0xFFEFF7EB),
          child: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text.rich(TextSpan(
                      text: "Welcome,\n",
                      style: TextStyle(fontSize: 20),
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
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          ),
        ));
  }
}

class BottomScreenButtonWidget extends StatelessWidget {
  final Widget iconWidget;
  final Function()? onPressed;
  final String name;

  const BottomScreenButtonWidget({
    Key? key,
    required this.iconWidget,
    this.onPressed,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(2),
                backgroundColor: MaterialStateProperty.all(Color(0xFFEFF7EB)),
                shape: MaterialStateProperty.all(CircleBorder())),
            child: iconWidget),
      ),
      Text(name, style: TextStyle(fontSize: 16))
    ]);
  }
}

class CentralBottomScreenButtonWidget extends StatelessWidget {
  final Widget iconWidget;
  final Function()? onPressed;
  final String name;

  const CentralBottomScreenButtonWidget({
    Key? key,
    required this.iconWidget,
    this.onPressed,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(2),
          backgroundColor: MaterialStateProperty.all(Color(0xFFEFF7EB)),
          shape: MaterialStateProperty.all(CircleBorder())),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          iconWidget,
          Text(name, style: TextStyle(fontSize: 16, color: Colors.black))
        ]),
      ),
    );
  }
}
