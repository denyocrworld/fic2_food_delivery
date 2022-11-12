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
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: 'John Doe',
                maxLength: 20,
                validator: (value) {
                  if (value == null || value == "") {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your name?",
                ),
                onChanged: (value) {},
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
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        RadioListTile(
                          title: const Text("Male"),
                          groupValue: "demo",
                          value: false,
                          onChanged: (val) {
                            field.didChange(true);
                          },
                        ),
                        RadioListTile(
                          title: const Text("Female"),
                          groupValue: "demo",
                          value: false,
                          onChanged: (val) {
                            field.didChange(true);
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
              const QRadioField(
                id: "gender",
                items: [
                  {
                    "label": "Male",
                    "value": "Male",
                  },
                  {
                    "label": "Female",
                    "value": "Female",
                  },
                ],
              ),
              Row(
                children: [
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
                    width: 20.0,
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
            ],
          ),
        ),
      ],
    );
  }
}
