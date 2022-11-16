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
      hintColor: Colors.orange,
    );
  }

  ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange[900],
        ),
      ),
      hintColor: Colors.blue,
    );
  }

  String? email = "";
  String? password = "";
  String? age = "";
  String? address = "";
  String? gender = "";
  String? footballClub = "";
  String? membership = "";
  String? role = "";
  String? favoriteEmployee = "";

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
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  QTextField(
                    label: "Password",
                    hint: "Your password",
                    obscure: true,
                    validator: Validator.required,
                    value: "123456",
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  QNumberField(
                    label: "Age",
                    hint: "Your age's",
                    validator: Validator.required,
                    value: "24",
                    onChanged: (value) {
                      age = value;
                    },
                  ),
                  QMemoField(
                    label: "Address",
                    hint: "Your addresses",
                    validator: Validator.required,
                    value: "Kamboja street 16, Bogor, West Java, Indonesia",
                    onChanged: (value) {
                      address = value;
                    },
                  ),
                  QRadioField(
                    label: "Gender",
                    hint: "Gender",
                    validator: Validator.atLeastOneitem,
                    items: const [
                      {
                        "label": "Female",
                        "value": "Female",
                      },
                      {
                        "label": "Male",
                        "value": "Male",
                      }
                    ],
                    onChanged: (value, label) {
                      gender = value;
                    },
                  ),
                  QCheckField(
                    label: "Club",
                    hint: "Your favorite football club",
                    validator: Validator.atLeastOneitem,
                    items: const [
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
                    onChanged: (value, label) {
                      footballClub = value;
                    },
                  ),
                  QSwitch(
                    label: "Member",
                    hint: "Your membership",
                    validator: Validator.atLeastOneitem,
                    items: const [
                      {
                        "label": "Private",
                        "value": "Private",
                      },
                      {
                        "label": "Premium",
                        "value": "Premium",
                      }
                    ],
                    onChanged: (value, label) {
                      membership = value;
                    },
                  ),
                  QDropdownField(
                    label: "Roles",
                    hint: "Your roles",
                    validator: Validator.required,
                    items: const [
                      {
                        "label": "Admin",
                        "value": "Admin",
                      },
                      {
                        "label": "Staff",
                        "value": "Staff",
                      }
                    ],
                    onChanged: (value, label) {
                      print("New Label: $label #");
                      print("New Value: $value #");
                      role = value;
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
                  QAutoComplete(
                    label: "Favorite employee",
                    hint: "Your favorite Employee",
                    validator: Validator.required,
                    items: const [
                      {
                        "label": "Jackie Roo",
                        "value": "Jackie Roo",
                        "info": "Hacker",
                      },
                      {
                        "label": "Dan Milton",
                        "value": "Dan Milton",
                        "info": "UI/UX Designer",
                      },
                      {
                        "label": "Ryper Roo",
                        "value": "Ryper Roo",
                        "info": "Android Developer",
                      }
                    ],
                    onChanged: (value, label) {
                      favoriteEmployee = value;
                    },
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
