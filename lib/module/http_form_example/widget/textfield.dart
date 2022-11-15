import 'package:flutter/material.dart';

class QTextField extends StatefulWidget {
  final String value;
  final Function(String value) onChanged;
  final String label;
  final String? Function(String?)? validator;
  final String? helperText;

  const QTextField({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.label,
    this.validator,
    this.helperText,
  }) : super(key: key);

  @override
  State<QTextField> createState() => _QTextFieldState();
}

class _QTextFieldState extends State<QTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(),
      child: TextFormField(
        initialValue: widget.value,
        maxLength: 20,
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
          helperText: widget.helperText,
        ),
        validator: widget.validator,
        onChanged: (value) => widget.onChanged(value),
      ),
    );
  }
}
