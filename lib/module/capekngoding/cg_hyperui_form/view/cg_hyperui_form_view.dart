//#GROUP_TEMPLATE hyperui_form
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiFormView extends StatefulWidget {
  const CgHyperuiFormView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiFormController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiForm"),
        actions: const [],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SnippetHeader("Basic"),
                  const SnippetContainer("q_textfield"),
                  QTextField(
                    label: "Name",
                    hint: "Name",
                    validator: Validator.required,
                    value: "John Doe",
                    onChanged: (value) {},
                  ),
                  const SnippetContainer("q_email"),
                  QTextField(
                    label: "Email",
                    hint: "Your email",
                    validator: Validator.email,
                    value: "demo@gmail.com",
                    onChanged: (value) {},
                  ),
                  const SnippetContainer("q_password"),
                  QTextField(
                    label: "Password",
                    hint: "Your password",
                    obscure: true,
                    validator: Validator.required,
                    suffixIcon: Icons.password,
                    value: "123456",
                    onChanged: (value) {},
                  ),
                  const SnippetHeader("Numberfield"),
                  QNumberField(
                    label: "Age",
                    hint: "Your age's",
                    validator: Validator.required,
                    value: "24",
                    onChanged: (value) {},
                  ),
                  QNumberField(
                    label: "Price 1",
                    hint: "Your product price's",
                    validator: Validator.required,
                    value: "23000",
                    onChanged: (value) {
                      print("Product price: $value");
                    },
                  ),
                  QNumberField(
                    label: "Price 2",
                    hint: "Your product price's",
                    validator: Validator.required,
                    value: "15000",
                    pattern: "#,###",
                    locale: "en_US",
                    onChanged: (value) {
                      print("Product price: $value");
                    },
                  ),
                  QNumberField(
                    label: "Price 3",
                    hint: "Your product price's",
                    validator: Validator.required,
                    value: "23200.23",
                    pattern: "#,###.00",
                    onChanged: (value) {
                      print("Product price: $value");
                    },
                  ),
                  QNumberField(
                    label: "Price 4",
                    hint: "Your product price's",
                    validator: Validator.required,
                    value: "23200.23",
                    pattern: "#,###.000",
                    onChanged: (value) {
                      print("Product price: $value");
                    },
                  ),
                  QNumberField(
                    label: "Price 5",
                    hint: "Your product price's",
                    validator: Validator.required,
                    value: "50000.45",
                    pattern: "\$#,###.00",
                    onChanged: (value) {
                      print("Product price: $value");
                    },
                  ),
                  const SnippetHeader("Autocomplete"),
                  QAutoComplete(
                    label: "Favorite employee",
                    hint: "Your favorite Employee",
                    validator: Validator.required,
                    items: const [
                      {
                        "label": "Jackie Roo",
                        "value": "101",
                        "info": "Hacker",
                      },
                      {
                        "label": "Dan Milton",
                        "value": "102",
                        "info": "UI/UX Designer",
                      },
                      {
                        "label": "Ryper Roo",
                        "value": "103",
                        "info": "Android Developer",
                      }
                    ],
                    onChanged: (value, label) {},
                  ),
                  QAutoComplete(
                    label: "Staff",
                    hint: "Your staff",
                    validator: Validator.required,
                    items: const [
                      {
                        "photo":
                            "https://i.ibb.co/MSM9Pmm/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                        "label": "Jessica Rin",
                        "value": 1,
                        "info": "Hacker",
                      },
                      {
                        "photo":
                            "https://i.ibb.co/VM8w6SY/photo-1528813860492-bb99459ec095-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                        "label": "Jessica Dolf",
                        "value": 2,
                        "info": "UI/UX Designer",
                      },
                      {
                        "photo":
                            "https://i.ibb.co/ckMm0Lq/photo-1576568699715-bae7154950c7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                        "label": "Melisa Roo",
                        "value": 3,
                        "info": "Android Developer",
                      }
                    ],
                    onChanged: (value, label) {},
                  ),
                  QDatePicker(
                    label: "Birth date",
                    hint: "Your birth date",
                    validator: Validator.required,
                    onChanged: (value) {
                      print("value: $value");
                    },
                  ),
                  QTimePicker(
                    label: "Working hour",
                    hint: "Your working hour",
                    validator: Validator.required,
                    onChanged: (value) {
                      print("value: $value");
                    },
                  ),
                  QMemoField(
                    label: "Address",
                    hint: "Your addresses",
                    validator: Validator.required,
                    value: "Kamboja street 16, Bogor, West Java, Indonesia",
                    onChanged: (value) {},
                  ),
                  QDropdownField(
                    label: "Roles",
                    hint: "Your roles",
                    validator: Validator.required,
                    items: const [
                      {
                        "label": "Admin",
                        "value": 1,
                      },
                      {
                        "label": "Staff",
                        "value": 2,
                      }
                    ],
                    onChanged: (value, label) {},
                  ),
                  QCheckField(
                    label: "Club",
                    hint: "Your favorite football club",
                    validator: Validator.atLeastOneitem,
                    items: const [
                      {
                        "label": "Persib",
                        "value": 101,
                        "checked": false,
                      },
                      {
                        "label": "Persikabo",
                        "value": 102,
                        "checked": true,
                      }
                    ],
                    onChanged: (values, ids) {},
                  ),
                  QSwitch(
                    label: "Member",
                    hint: "Your membership",
                    validator: Validator.atLeastOneitem,
                    items: const [
                      {
                        "label": "Private",
                        "value": 1,
                      },
                      {
                        "label": "Premium",
                        "value": 2,
                      }
                    ],
                    onChanged: (values, ids) {},
                  ),
                  QRadioField(
                    label: "Gender",
                    hint: "Gender",
                    validator: Validator.atLeastOneitem,
                    items: const [
                      {
                        "label": "Female",
                        "value": 1,
                      },
                      {
                        "label": "Male",
                        "value": 2,
                      }
                    ],
                    onChanged: (value, label) {},
                  ),
                  QImagePicker(
                    label: "Photo",
                    hint: "Your photo",
                    validator: Validator.required,
                    value: null,
                    onChanged: (value) {},
                  ),
                  const QLocationPicker(
                    id: "location",
                    label: "Location",
                    latitude: -6.218481065235333,
                    longitude: 106.80254435779423,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<CgHyperuiFormView> createState() => CgHyperuiFormController();
}
