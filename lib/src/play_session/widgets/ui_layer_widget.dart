import 'package:flutter/material.dart';

class UILayerWidget extends StatelessWidget {
  const UILayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
            height: 80,
            child: Container(
              color: Colors.blue,
              child: LinearProgressIndicator(),
            )),
        Spacer(),
        SizedBox(
            height: 160,
            child: Container(
              color: Colors.blue,
              child: Wrap(direction: Axis.horizontal, spacing: 20, children: [
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
              ]),
            )),
      ],
    );
  }
}
