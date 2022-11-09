import 'package:example/core.dart';
import 'package:flutter/material.dart';

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class FormUISwitchView extends StatelessWidget {
  const FormUISwitchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExCard(
      title: "Switch",
      children: [
        Switch(
          value: false,
          onChanged: (value) {},
        ),
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Radio(
          value: false,
          groupValue: "gender",
          onChanged: (value) {},
        ),
        Form(
          key: _formKey,
          child: Column(
            children: [
              FormField(
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
                    child: SwitchListTile(
                      title: const Text("Subscribe to our mailing list."),
                      value: true,
                      onChanged: (val) {
                        field.didChange(val);
                      },
                    ),
                  );
                },
              ),
              FormField(
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
                    child: CheckboxListTile(
                      title: const Text("Subscribe to our mailing list."),
                      value: false,
                      onChanged: (val) {
                        field.didChange(val);
                      },
                    ),
                  );
                },
              ),
              FormField(
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
                    child: RadioListTile(
                      title: const Text("Subscribe to our mailing list."),
                      groupValue: "demo",
                      value: false,
                      onChanged: (val) {
                        field.didChange(true);
                      },
                    ),
                  );
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.save),
                label: const Text("Save"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  var validation = _formKey.currentState!.validate();
                  print(validation);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.save),
                label: const Text("Reset"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  _formKey.currentState!.reset();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
