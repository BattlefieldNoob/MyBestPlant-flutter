import 'package:flutter/material.dart';

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
