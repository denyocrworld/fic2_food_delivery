import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final String label;
  final String value;
  final Function()? onPressed;

  const RowItem({
    Key? key,
    this.label = "",
    this.value = "",
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(label),
            ),
            Text(
              value,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
