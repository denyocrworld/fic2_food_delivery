import 'package:flutter/material.dart';

class YDTimePicker extends StatefulWidget {
  final String label;
  final TimeOfDay? value;

  const YDTimePicker({
    Key? key,
    required this.label,
    this.value,
  }) : super(key: key);

  @override
  State<YDTimePicker> createState() => _YDTimePickerState();
}

class _YDTimePickerState extends State<YDTimePicker> {
  late TextEditingController controller;
  TimeOfDay? selectedDate;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(
      text: initialValue,
    );
  }

  String get initialValue {
    var hh = widget.value!.hour.toString().padLeft(2, "0");
    var mm = widget.value!.minute.toString().padLeft(2, "0");
    return "$hh:$mm";
  }

  String get formattedValue {
    var hh = selectedDate!.hour.toString().padLeft(2, "0");
    var mm = selectedDate!.minute.toString().padLeft(2, "0");
    return "$hh:$mm";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
              child: child ?? Container(),
            );
          },
        );

        selectedDate = pickedTime;
        controller.text = formattedValue;
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
