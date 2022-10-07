import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class ExTextArea extends StatelessWidget {
  final String id;
  final String label;
  final int maxLines;
  final String? value;

  const ExTextArea({
    Key? key,
    required this.id,
    required this.label,
    this.maxLines = 6,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExTextField(
      id: id,
      label: label,
      maxLines: maxLines,
      value: value,
    );
  }
}
