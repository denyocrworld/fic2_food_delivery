import 'package:flutter/material.dart';

class QRadioField extends StatefulWidget {
  final String id;
  final List<Map<String, dynamic>> items;
  final String? Function(bool?)? validator;

  const QRadioField({
    Key? key,
    required this.id,
    required this.items,
    this.validator,
  }) : super(key: key);

  @override
  State<QRadioField> createState() => _QRadioFieldState();
}

class _QRadioFieldState extends State<QRadioField> {
  late List<Map<String, dynamic>> items;

  @override
  void initState() {
    super.initState();
    items = widget.items;
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
            labelText: 'Subscribe to mailing list.',
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
                groupValue: widget.id,
                value: false,
                onChanged: (val) {
                  field.didChange(true);
                },
              );
            },
          ),
        );
      },
    );
  }
}
