import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialLoginView extends StatefulWidget {
  const TutorialLoginView({Key? key}) : super(key: key);

  Widget build(context, TutorialLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
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
                QDropdownField(
                  label: "Gender",
                  hint: "Gender",
                  value: "xFemale",
                  validator: Validator.required,
                  items: const [
                    {
                      "label": "Male",
                      "value": 1,
                    },
                    {
                      "label": "Female",
                      "value": 2,
                    }
                  ],
                  onChanged: (value, label) {},
                ),
                const Divider(),
                Container(
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      bool isValid =
                          controller.formKey.currentState!.validate();
                      if (!isValid) {}

                      print(isValid);
                    },
                    child: const Text("Save"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialLoginView> createState() => TutorialLoginController();
}
