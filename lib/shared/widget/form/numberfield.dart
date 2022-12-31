import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class QNumberField extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  final String? Function(String?)? validator;
  final Function(String) onChanged;

  final String? pattern;
  final String? locale;

  const QNumberField({
    Key? key,
    required this.label,
    this.value,
    this.validator,
    this.hint,
    required this.onChanged,
    this.pattern,
    this.locale,
  }) : super(key: key);

  @override
  State<QNumberField> createState() => _QNumberFieldState();
}

class _QNumberFieldState extends State<QNumberField> {
  String? value;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    //regex untuk hanya menerima angka dan koma?
    value = widget.value?.replaceAll(RegExp(r'^[0-9,]+$'), '');
    controller = TextEditingController(
      text: formattedValue,
    );
  }

  String? get formattedValue {
    if (widget.pattern != null) {
      final currencyFormat = NumberFormat(widget.pattern, widget.locale);
      var pValue = num.tryParse(value.toString()) ?? 0;
      print("pValue: $pValue");
      return currencyFormat.format(pValue);
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: widget.validator,
      maxLength: 20,
      keyboardType: TextInputType.number,
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
        suffixIcon: const Icon(
          Icons.numbers,
        ),
        helperText: widget.hint,
      ),
      onChanged: (newValue) {
        //buatlah kode di dart untuk replaceAll semua karakter non digit?
        value = newValue.replaceAll(RegExp(r'\D'), '');
        controller.text = formattedValue ?? "";
        widget.onChanged(newValue.replaceAll(RegExp(r'\D'), ''));
        controller.selection =
            TextSelection.collapsed(offset: controller.text.length);
      },
    );
  }
}
