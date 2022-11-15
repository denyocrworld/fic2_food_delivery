import 'package:badges/badges.dart';
import 'package:example/shared/widget/theme_editor/themes/theme.dart';
import 'package:flutter/material.dart';

class BadgeText extends StatefulWidget {
  final Color? backgroundColor;

  const BadgeText({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  State<BadgeText> createState() => _BadgeTextState();
}

class _BadgeTextState extends State<BadgeText> {
  @override
  Widget build(BuildContext context) {
    return Badge(
      child: SizedBox(
        height: hmd,
        width: 120.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.backgroundColor,
          ),
          onPressed: () {},
          child: const Text(
            "New",
            style: TextStyle(fontSize: fs1),
          ),
        ),
      ),
    );
  }
}
