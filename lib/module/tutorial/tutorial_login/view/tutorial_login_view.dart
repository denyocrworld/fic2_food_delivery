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
          child: Column(
            children: [
              QDropdownField(
                label: "Gender",
                hint: "Gender",
                value: "xMale",
                validator: Validator.required,
                items: const [
                  {
                    "label": "Male",
                    "value": "xMale",
                  },
                  {
                    "label": "Female",
                    "value": "xFemale",
                  }
                ],
                onChanged: (value, label) {},
              ),
              QDropdownField(
                label: "Gender",
                hint: "Gender",
                value: "xFemale",
                validator: Validator.required,
                items: const [
                  {
                    "label": "Male",
                    "value": "xMale",
                  },
                  {
                    "label": "Female",
                    "value": "xFemale",
                  }
                ],
                onChanged: (value, label) {},
              ),
              QDropdownField(
                label: "Gender",
                hint: "Gender",
                value: "xFemale",
                validator: Validator.required,
                items: const [],
                onChanged: (value, label) {},
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialLoginView> createState() => TutorialLoginController();
}
