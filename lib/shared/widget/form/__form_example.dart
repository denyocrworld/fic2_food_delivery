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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Test"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                QTextField(
                  label: "Email",
                  hint: "Your email",
                  onChanged: (value) {},
                  value: "demo@gmail.com",
                ),
                QTextField(
                  label: "Password",
                  hint: "Your password",
                  obscure: true,
                  onChanged: (value) {},
                  value: "123456",
                ),
                QNumberField(
                  label: "Age",
                  hint: "Your age's",
                  onChanged: (value) {},
                  value: "24",
                ),
                QMemoField(
                  label: "Address",
                  hint: "Your addres",
                  onChanged: (value) {},
                  value: "Kamboja street 16, Bogor, West Java, Indonesia",
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
                  onChanged: (label, value) {
                    print("New Label: ");
                    print("New Value: ");
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
                  onChanged: (label, value) {
                    print("New Label: ");
                    print("New Value: ");
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.login),
                  label: const Text("Save"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    bool isValid = formKey.currentState!.validate();
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
