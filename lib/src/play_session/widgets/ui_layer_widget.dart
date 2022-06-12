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
        SizedBox(height: 80, child: Container(color: Color(0xFFEFF7EB))),
        Spacer(),
        SizedBox(
            height: 100,
            child: Container(
              child: Row(children: [
                Spacer(),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Spacer(),
                BottomScreenButtonWidget(),
                Spacer(),
                Image.asset(
                  'assets/images/settings.png',
                  semanticLabel: 'Settings',
                ),
                Spacer()
              ]),
            )),
      ],
    );
  }
}

class BottomScreenButtonWidget extends StatelessWidget {
  const BottomScreenButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: null,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xFFEFF7EB)),
            shape: MaterialStateProperty.all(CircleBorder())),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.elderly),
        ));
  }
}
