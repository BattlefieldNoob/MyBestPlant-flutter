import 'package:flutter/material.dart';

class RoundScreenButtonWidget extends StatelessWidget {
  const RoundScreenButtonWidget({
    Key? key,
    required this.onPressed,
    required this.iconWidget,
  }) : super(key: key);

  final Function()? onPressed;
  final Widget iconWidget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(2),
            enableFeedback: true,
            splashFactory: InkSplash.splashFactory,
            overlayColor: MaterialStateProperty.all(Colors.black12),
            backgroundColor: MaterialStateProperty.all(Color(0xFFEFF7EB)),
            shape: MaterialStateProperty.all(CircleBorder())),
        child: iconWidget);
  }
}
