//#GROUP_TEMPLATE form_
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
              //#TEMPLATE form_textfield
              TextFormField(
                initialValue: 'John Doe',
                maxLength: 20,
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
              //#END
              //#TEMPLATE form_textfield_email
              TextFormField(
                initialValue: 'admin@gmail.com',
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.email,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'Enter your email address',
                ),
                onChanged: (value) {},
              ),
              //#END
              //#TEMPLATE form_textfield_password
              TextFormField(
                initialValue: '123456',
                maxLength: 20,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.password,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'Enter your password',
                ),
                onChanged: (value) {},
              ),
              //#END
              //#TEMPLATE form_textarea
              TextFormField(
                initialValue: 'Jln. Sukangoding No. 45',
                maxLength: 200,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your address",
                ),
                onChanged: (value) {},
              ),
              //#END
              //#TEMPLATE form_radio
              LayoutBuilder(builder: (context, constraint) {
                String groupValue = "gender";
                List items = [
                  {
                    "label": "Female",
                    "value": "female",
                    "checked": true,
                  },
                  {
                    "label": "Male",
                    "value": "Male",
                  }
                ];
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
                        labelText: 'Gender',
                        errorText: field.errorText,
                        border: InputBorder.none,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          var item = items[index];

                          return RadioListTile<dynamic>(
                            title: Text("${item["label"]}"),
                            groupValue: true,
                            value: item["checked"] ?? false,
                            onChanged: (val) {
                              field.didChange(true);
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              }),
              //#END
              //#TEMPLATE form_radio
              LayoutBuilder(builder: (context, constraint) {
                String groupValue = "gender";
                List items = [
                  {
                    "label": "Female",
                    "value": "female",
                    "checked": true,
                  },
                  {
                    "label": "Male",
                    "value": "Male",
                  }
                ];
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
                        labelText: 'Gender',
                        errorText: field.errorText,
                        border: InputBorder.none,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          var item = items[index];

                          return RadioListTile<dynamic>(
                            title: Text("${item["label"]}"),
                            groupValue: true,
                            value: item["checked"] ?? false,
                            onChanged: (val) {
                              field.didChange(true);
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              }),
              //#END
              //#TEMPLATE form_check
              LayoutBuilder(builder: (context, constraint) {
                List items = [
                  {
                    "label": "Flutter",
                    "value": "Flutter",
                  },
                  {
                    "label": "Java",
                    "value": "Java",
                    "checked": true,
                  },
                  {
                    "label": "C#",
                    "value": "C#",
                  }
                ];
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
                        labelText: 'Gender',
                        errorText: field.errorText,
                        border: InputBorder.none,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          var item = items[index];

                          return CheckboxListTile(
                            title: Text("${item["label"]}"),
                            value: item["checked"] ?? false,
                            onChanged: (value) {
                              field.didChange(true);
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              }),
              //#END
              const QRadioField(
                id: "member",
                label: "Member",
                items: [
                  {
                    "label": "Private",
                    "value": "Private",
                    "checked": true,
                  },
                  {
                    "label": "Premium",
                    "value": "Premium",
                  }
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 30.0,
              ),
              const Divider(),

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
