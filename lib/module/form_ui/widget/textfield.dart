import 'package:flutter/material.dart';

class QTextField extends StatefulWidget {
  final String id;
  final String label;
  final String? value;
  final String? hint;
  final String? Function(bool?)? validator;

  const QTextField({
    Key? key,
    required this.id,
    required this.label,
    this.value,
    this.validator,
    this.hint,
  }) : super(key: key);

  @override
  State<QTextField> createState() => _QTextFieldState();
}

class _QTextFieldState extends State<QTextField> {
  @override
  void initState() {
    super.initState();
  }

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
          helperText: widget.hint,
        ),
        onChanged: (value) {},
      ),
    );
  }
}
