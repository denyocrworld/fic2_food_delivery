import 'package:flutter/material.dart';

class QRadioField extends StatefulWidget {
  final String id;
  final String label;
  final List<Map<String, dynamic>> items;
  final String? Function(bool?)? validator;

  const QRadioField({
    Key? key,
    required this.id,
    required this.label,
    required this.items,
    this.validator,
  }) : super(key: key);

  @override
  State<QRadioField> createState() => _QRadioFieldState();
}

class _QRadioFieldState extends State<QRadioField> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();
    for (var item in widget.items) {
      items.add(Map.from(item));
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      initialValue: false,
      validator: (value) {
        if (value == null || value == false) {
          return 'Please enter some text';
        }
        return null;
      },
      enabled: true,
      builder: (FormFieldState<bool> field) {
        return InputDecorator(
          decoration: InputDecoration(
            labelText: widget.label,
            errorText: field.errorText,
            border: InputBorder.none,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              var item = items[index];
              return RadioListTile(
                title: Text("${item["label"]}"),
                groupValue: item["chekced"] ?? false,
                value: item["checked"] ?? false,
                onChanged: (val) {
                  bool newValue = val ? false : true;
                  items[index]["checked"] = newValue;
                  field.didChange(true);
                  setState(() {});
                },
              );
            },
          ),
        );
      },
    );
  }
}
