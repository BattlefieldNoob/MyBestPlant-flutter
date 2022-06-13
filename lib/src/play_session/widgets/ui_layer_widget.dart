import 'package:flutter/material.dart';

import 'ui_layer/bottom_bar_widget.dart';
import 'ui_layer/upper_bar_widget.dart';

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
