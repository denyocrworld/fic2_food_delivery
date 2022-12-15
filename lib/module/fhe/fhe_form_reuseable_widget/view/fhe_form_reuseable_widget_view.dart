import 'package:flutter/material.dart';
import 'package:example/core.dart';

class FheFormReuseableWidgetView extends StatefulWidget {
  const FheFormReuseableWidgetView({Key? key}) : super(key: key);

  Widget build(context, FheFormReuseableWidgetController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("FheFormReuseableWidget"),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
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
                QImagePicker(
                  label: "Photo",
                  hint: "Your photo",
                  validator: Validator.required,
                  value: null,
                  onChanged: (value) {},
                ),
                QTextField(
                  label: "Name",
                  hint: "Name",
                  validator: Validator.required,
                  value: "John Doe",
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<FheFormReuseableWidgetView> createState() =>
      FheFormReuseableWidgetController();
}
