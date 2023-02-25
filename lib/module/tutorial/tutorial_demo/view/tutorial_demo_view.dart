import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/rating/rating_field.dart';

class TutorialDemoView extends StatefulWidget {
  const TutorialDemoView({Key? key}) : super(key: key);

  Widget build(context, TutorialDemoController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create product"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
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
                      QTextField(
                        label: "Name",
                        hint: "Name",
                        validator: Validator.required,
                        value: "John Doe",
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
                        hint: "Your addresses",
                        validator: Validator.required,
                        value: "Kamboja street 16, Bogor, West Java, Indonesia",
                        onChanged: (value) {},
                      ),
                      QLocationPicker(
                        id: "location",
                        label: "Location",
                        latitude: -6.218481065235333,
                        longitude: 106.80254435779423,
                        onChanged: (latitude, longitude) {},
                      ),
                      QRatingField(
                        label: "rating",
                        value: 3.0,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialDemoView> createState() => TutorialDemoController();
}
