import 'package:flutter/material.dart';

import 'round_screen_button_widget.dart';

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
        child: RoundScreenButtonWidget(
            onPressed: onPressed, iconWidget: iconWidget),
      ),
      Text(name, style: TextStyle(fontSize: 16))
    ]);
  }
}
