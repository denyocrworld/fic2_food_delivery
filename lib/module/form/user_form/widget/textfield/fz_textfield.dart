import 'package:flutter/material.dart';

class FzTextField extends StatefulWidget {
  final String label;
  final String? value;
  final Function(String text)? onChanged;
  final Function(String text)? onSubmitted;
  final int? maxLength;
  const FzTextField({
    Key? key,
    required this.label,
    this.value,
    this.onChanged,
    this.onSubmitted,
    this.maxLength,
  }) : super(key: key);

  @override
  State<FzTextField> createState() => _FzTextFieldState();
}

class _FzTextFieldState extends State<FzTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.value,
      maxLength: widget.maxLength,
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
        helperText: "What's your name?",
      ),
      onChanged: (value) {
        if (widget.onChanged != null) {
          widget.onChanged!(value);
        }
      },
      onFieldSubmitted: (value) {
        if (widget.onSubmitted != null) {
          widget.onSubmitted!(value);
        }
      },
    );
  }
}
