import 'package:flutter/material.dart';

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
