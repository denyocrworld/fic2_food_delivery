import 'package:example/core.dart';
import 'package:flutter/material.dart';

class YDDatePicker extends StatefulWidget {
  final String label;
  final DateTime? value;
  final Function(DateTime value) onChanged;

  const YDDatePicker({
    Key? key,
    required this.label,
    required this.onChanged,
    this.value,
  }) : super(key: key);

  @override
  State<YDDatePicker> createState() => _YDDatePickerState();
}

class _YDDatePickerState extends State<YDDatePicker> {
  late TextEditingController controller;
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(
      text: initialValue,
    );
  }

  String get initialValue {
    return DateFormat("d MMM y").format(widget.value!);
  }

  String get formattedValue {
    return DateFormat("d MMM y").format(selectedDate!);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );
        selectedDate = pickedDate;
        controller.text = formattedValue;
        widget.onChanged(selectedDate!);
        setState(() {});
      },
      child: AbsorbPointer(
        child: TextFormField(
          controller: controller,
          maxLength: 20,
          decoration: InputDecoration(
            labelText: widget.label,
            labelStyle: const TextStyle(
              color: Colors.blueGrey,
            ),
            suffixIcon: const Icon(
              Icons.date_range,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
              ),
            ),
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
