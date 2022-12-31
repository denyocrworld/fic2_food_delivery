import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class QNumberField extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  final String? Function(String?)? validator;
  final Function(String) onChanged;

  const QNumberField({
    Key? key,
    required this.label,
    this.value,
    this.validator,
    this.hint,
    required this.onChanged,
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
    value = widget.value?.replaceAll(RegExp(r'\D'), '');
    controller = TextEditingController(
      text: formattedValue,
    );
  }

  String? get formattedValue {
    final currencyFormat = NumberFormat("#,##0", "en_US");
    return currencyFormat.format(num.tryParse(value.toString()) ?? 0);
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
