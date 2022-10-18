import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class PsShareParkingFormView extends StatefulWidget {
  const PsShareParkingFormView({Key? key}) : super(key: key);

  Widget build(context, PsShareParkingFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Share Parking Form"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doShareParking(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //body
              Card(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const [
                      ExImagePicker(
                        id: "photo",
                        label: "Photo",
                        // value: "https://i.ibb.co/PGv8ZzG/me.jpg",
                      ),
                      ExLocationPicker(
                        id: "location",
                        label: "Location",
                        enableEdit: true,
                      ),
                      ExTextField(
                        id: "price",
                        label: "Price",
                        keyboardType: TextInputType.number,
                        value: "5",
                      ),
                      ExTextArea(
                        id: "description",
                        label: "Description",
                        value: "-",
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
  State<PsShareParkingFormView> createState() => PsShareParkingFormController();
}
