import 'package:flutter/material.dart';
import 'package:my_best_plant/src/play_session/widgets/ui_layer/round_screen_button_widget.dart';

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
    return RoundScreenButtonWidget(
        onPressed: onPressed,
        iconWidget: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            iconWidget,
            Text(name, style: TextStyle(fontSize: 16, color: Colors.black))
          ]),
        ));
  }
}
