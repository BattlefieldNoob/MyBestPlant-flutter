import 'package:flutter/material.dart';

class PlantInfoProgressWidget extends StatelessWidget {
  final String name;
  final double value;

  const PlantInfoProgressWidget({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lerpValue = ((-0.8 + value) * 10).clamp(0.0, 1.0);
    final color = Color.lerp(Color(0xFFF2D0A4), Color(0xFFA43039), lerpValue);
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 28,
                child: LinearProgressIndicator(
                  value: value,
                  color: color,
                  backgroundColor: Color(0xFFEEECCC),
                ),
              )
            ],
          ),
        ));
  }
}
