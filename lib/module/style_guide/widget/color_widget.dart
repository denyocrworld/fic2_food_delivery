import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  final Color color;
  final String name;
  final dynamic label;
  final double? width;
  final double? height;

  const ColorWidget({
    Key? key,
    required this.color,
    required this.name,
    this.label,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width ?? 60.0,
          height: height ?? 60.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: Center(
            child: Text(
              "${label ?? ''}",
              style: const TextStyle(
                fontSize: 10.0,
              ),
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
