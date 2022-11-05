import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  final Color color;
  final String name;
  const ColorWidget({
    Key? key,
    required this.color,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 10.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
