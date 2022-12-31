import 'package:flutter/material.dart';
import 'package:example/core.dart';

class CgHyperuiFormView extends StatefulWidget {
  const CgHyperuiFormView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            QTextField(
                              label: "Name",
                              hint: "Name",
                              validator: Validator.required,
                              value: "John Doe",
                              onChanged: (value) {},
                            ),
                            QTextField(
                              label: "Email",
                              hint: "Your email",
                              validator: Validator.email,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
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
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                QMemoField(
                                  label: "Address",
                                  hint: "Your addresses",
                                  validator: Validator.required,
                                  value:
                                      "Kamboja street 16, Bogor, West Java, Indonesia",
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
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
                              hint: "Your gender",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            QImagePicker(
                              label: "Photo",
                              hint: "Your photo",
                              validator: Validator.required,
                              value: null,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: const [
                            QLocationPicker(
                              id: "location",
                              label: "Location",
                              latitude: -6.218481065235333,
                              longitude: 106.80254435779423,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgHyperuiFormView> createState() => CgHyperuiFormController();
}
