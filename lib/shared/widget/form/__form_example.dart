import 'package:example/core.dart';
import 'package:example/shared/widget/form/dropdown.dart';
import 'package:flutter/material.dart';

class FormExampleView extends StatefulWidget {
  const FormExampleView({Key? key}) : super(key: key);

  @override
  State<FormExampleView> createState() => _FormExampleViewState();
}

class _FormExampleViewState extends State<FormExampleView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool lightMode = false;

  ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      primaryColor: Colors.blueGrey,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueGrey,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey[900],
        ),
      ),
    );
  }

  ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange[900],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: lightMode ? lightTheme : darkTheme,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Form Test"),
          actions: [
            IconButton(
              onPressed: () {
                lightMode = !lightMode;
                setState(() {});
              },
              icon: const Icon(
                Icons.light_mode,
                size: 24.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Save"),
                style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.blueGrey,
                    ),
                onPressed: () {
                  bool isValid = formKey.currentState!.validate();
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Basic Form",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  QTextField(
                    label: "Email",
                    hint: "Your email",
                    validator: Validator.required,
                    value: "demo@gmail.com",
                    onChanged: (value) {},
                  ),
                  QTextField(
                    label: "Password",
                    hint: "Your password",
                    obscure: true,
                    validator: Validator.required,
                    value: "123456",
                    onChanged: (value) {},
                  ),
                  QNumberField(
                    label: "Age",
                    hint: "Your age's",
                    validator: Validator.required,
                    value: "24",
                    onChanged: (value) {},
                  ),
                  QMemoField(
                    label: "Address",
                    hint: "Your addres",
                    validator: Validator.required,
                    value: "Kamboja street 16, Bogor, West Java, Indonesia",
                    onChanged: (value) {},
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
                  QDropdownField(
                    label: "Membership",
                    validator: Validator.required,
                    items: const [
                      {
                        "label": "Regular",
                        "value": "1",
                      },
                      {
                        "label": "Premium",
                        "value": "2",
                      }
                    ],
                    onChanged: (value, label) {
                      print("New Label: $label #");
                      print("New Value: $value #");
                    },
                  ),
                  QDropdownField(
                    label: "Membership",
                    validator: Validator.required,
                    items: const [
                      {
                        "label": "Regular",
                        "value": "1",
                      },
                      {
                        "label": "Premium",
                        "value": "2",
                      }
                    ],
                    value: "Regular",
                    onChanged: (value, label) {
                      print("New Label: $label #");
                      print("New Value: $value #");
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Advanced Form",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const QAutoComplete(
                    id: "member",
                    label: "Member",
                    validator: Validator.required,
                    items: [
                      {
                        "label": "Jackie Roo",
                        "info": "Hacker",
                      },
                      {
                        "label": "Dan Milton",
                        "info": "UI/UX Designer",
                      },
                      {
                        "label": "Ryper Roo",
                        "info": "Android Developer",
                      }
                    ],
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
                  const SizedBox(
                    height: 300.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
