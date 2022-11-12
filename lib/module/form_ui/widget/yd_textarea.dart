import 'package:flutter/material.dart';

class YDTextArea extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  const YDTextArea({
    Key? key,
    required this.label,
    this.value,
    this.hint,
  }) : super(key: key);

  @override
  State<YDTextArea> createState() => _YDTextAreaState();
}

class _YDTextAreaState extends State<YDTextArea> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.value,
      maxLength: 200,
      maxLines: 6,
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
    );
  }
}
