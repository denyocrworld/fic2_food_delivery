import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class FormUiView extends StatefulWidget {
  const FormUiView({Key? key}) : super(key: key);

  Widget build(context, FormUiController controller) {
    controller.view = this;

    getHeader(title) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        width: MediaQuery.of(context).size.width,
        child: Text(
          "$title",
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
      );
    }

    getRowValule(label, value) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "$label",
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
            Text(
              "$value",
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("FormUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //body

              Container(
                constraints: const BoxConstraints(
                  maxWidth: 680.0,
                ),
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          child: ExTextField(
                            id: "first_name",
                            label: "First Name",
                            value: "Deny",
                          ),
                        ),
                        Expanded(
                          child: ExTextField(
                            id: "last_name",
                            label: "Last Name",
                            value: "Deny",
                          ),
                        ),
                      ],
                    ),
                    const ExTextArea(
                      id: "address",
                      label: "Address",
                      value:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    ),
                    const ExLocationPicker(
                      id: "location",
                      label: "Location",
                      latitude: -6.218481065235333,
                      longitude: 106.80254435779423,
                    ),
                    const ExLocationPicker(
                      id: "target_location",
                      label: "Target Location",
                      latitude: null,
                      longitude: null,
                    ),
                    const ExCombo(
                      id: "gender",
                      label: "Gender",
                      items: [
                        {
                          "label": "Male",
                          "value": "Male",
                        },
                        {
                          "label": "Female",
                          "value": "Female",
                        }
                      ],
                      value: "Female",
                    ),
                    const ExImagePicker(
                      id: "photo",
                      label: "Photo",
                      value: null,
                    ),
                    const ExCheckBox(
                      id: "my_hobby",
                      label: "My Hobby",
                      items: [
                        {
                          "label": "Coding",
                          "value": "Coding",
                        },
                        {
                          "label": "Afk",
                          "value": "Afk",
                        },
                        {
                          "label": "E-Sport",
                          "value": "E-Sport",
                        }
                      ],
                      value: [
                        "Coding",
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: ExDatePicker(
                            id: "birth_date",
                            label: "Birth Date",
                            value: null,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: ExTimePicker(
                            id: "working_hour",
                            label: "Working Hour",
                            value: null,
                          ),
                        ),
                      ],
                    ),
                    const ExSwitch(
                      id: "enable_notification",
                      label: "Enable Notification",
                      value: true,
                    ),
                    const ExRadio(
                      id: "gender",
                      label: "Gender",
                      items: [
                        {
                          "label": "Male",
                          "value": "Male",
                        },
                        {
                          "label": "Female",
                          "value": "Female",
                        }
                      ],
                      value: "Female",
                    ),
                    const ExRating(
                      id: "rating",
                      label: "Rating",
                      value: null,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: 300.0,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Reuseable Widget Standart 1.0",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const Divider(),
                    getHeader("Property"),
                    getRowValule("id", ""),
                    getRowValule("label", ""),
                    getRowValule("value", ""),
                    getHeader("Event"),
                    getRowValule("onChanged", ""),
                    getHeader("Instance"),
                    getRowValule("Input.inputController[\"widgetId\"].***", ""),
                    getRowValule("instance.setValue(value)", ""),
                    getRowValule("instance.getValue()", ""),
                    getRowValule("instance.resetValue()", ""),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FormUiView> createState() => FormUiController();
}
