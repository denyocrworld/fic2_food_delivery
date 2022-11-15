import 'package:flutter/material.dart';

class QSwitch extends StatefulWidget {
  final String id;
  final String label;
  final List<Map<String, dynamic>> items;
  final String? Function(List<Map<String, dynamic>> item)? validator;

  const QSwitch({
    Key? key,
    required this.id,
    required this.label,
    required this.items,
    this.validator,
  }) : super(key: key);

  @override
  State<QSwitch> createState() => _QSwitchState();
}

class _QSwitchState extends State<QSwitch> {
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
      // validator: widget.validator,
      // validator: (value) => validate(items),
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

              return SwitchListTile(
                title: Text("${item["label"]}"),
                value: item["checked"] ?? false,
                onChanged: (val) {
                  items[index]["checked"] = val;
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
