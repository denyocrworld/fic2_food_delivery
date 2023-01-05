// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AzTextField extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final int? maxLength;

  const AzTextField({
    Key? key,
    required this.label,
    required this.onChanged,
    required this.onSubmitted,
    this.maxLength,
    this.value,
    this.hint,
  }) : super(key: key);

  @override
  State<AzTextField> createState() => Az_TextFieldState();
}

class Az_TextFieldState extends State<AzTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.value ?? "",
      maxLength: widget.maxLength ?? 50,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
        helperText: widget.hint,
      ),
      onChanged: (value) => widget.onChanged(value),
      onFieldSubmitted: (value) => widget.onSubmitted(value),
    );
  }
}
