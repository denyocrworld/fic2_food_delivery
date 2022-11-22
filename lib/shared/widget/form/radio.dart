import 'package:flutter/material.dart';

class QRadioField extends StatefulWidget {
  final String id;
  final String label;
  final List<Map<String, dynamic>> items;
  final String? Function(List<Map<String, dynamic>> item)? validator;

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

  setAllItemsToFalse() {
    for (var item in items) {
      item["checked"] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      initialValue: false,
      validator: (value) => widget.validator!(items),
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
                groupValue: true,
                value: item["checked"] ?? false,
                onChanged: (val) {
                  setAllItemsToFalse();

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
