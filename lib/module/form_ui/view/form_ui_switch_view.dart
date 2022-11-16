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
        Form(
          key: _formKey,
          child: Column(
            children: [
              QDatePicker(
                id: "birth_date",
                label: "Birth Date",
                validator: Validator.required,
                hint: "Your birth date",
                value: DateTime.now(),
              ),
              const QTimePicker(
                id: "birth_date",
                label: "Birth Date",
                validator: Validator.required,
                hint: "Your birth date",
                value: TimeOfDay(
                  hour: 13,
                  minute: 30,
                ),
              ),
              const QDatePicker(
                id: "created_at",
                label: "Created At",
                validator: Validator.required,
                hint: "Created at N",
              ),
              const QAutoComplete(
                id: "member",
                label: "Member",
                validator: Validator.required,
                items: [
                  {
                    "photo": "https://i.ibb.co/PGv8ZzG/me.jpg",
                    "label": "John Doe",
                    "info": "Programmer"
                  },
                  {
                    "photo":
                        "https://i.ibb.co/5v5RLKr/photo-1528813860492-bb99459ec095-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                    "label": "Renata",
                    "info": "System Analyst"
                  },
                  {
                    "photo":
                        "https://i.ibb.co/mR8PJCz/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                    "label": "Kayla",
                    "info": "Test Engineer"
                  }
                ],
              ),
              QTextField(
                label: "Name",
                validator: (value) =>
                    Validator.required(value, fieldName: "Name"),
                hint: "Your name",
              ),
              const QNumberField(
                label: "Age",
                validator: Validator.number,
                hint: "Your name",
              ),
              const QMemoField(
                label: "address",
                validator: Validator.required,
                hint: "Your address",
              ),
              const QSwitch(
                id: "member",
                label: "Member",
                validator: Validator.atLeastOneitem,
                items: [
                  {
                    "label": "Private",
                    "value": "Private",
                  },
                  {
                    "label": "Premium",
                    "value": "Premium",
                  }
                ],
              ),
              const QRadioField(
                label: "Member",
                validator: Validator.atLeastOneitem,
                items: [
                  {
                    "label": "Private",
                    "value": "Private",
                  },
                  {
                    "label": "Premium",
                    "value": "Premium",
                  }
                ],
              ),
              const QCheckField(
                id: "club",
                label: "Club",
                validator: Validator.atLeastOneitem,
                items: [
                  {
                    "label": "Persib",
                    "value": "Persib",
                    "checked": false,
                  },
                  {
                    "label": "Persikabo",
                    "value": "Persikabo",
                    "checked": true,
                  }
                ],
              ),
              const Divider(),
              const Divider(),
              //------------------
              //------------------

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
              //#TEMPLATE form_numberfield
              TextFormField(
                initialValue: '24',
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Age',
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
            ],
          ),
        ),
      ],
    );
  }
}
