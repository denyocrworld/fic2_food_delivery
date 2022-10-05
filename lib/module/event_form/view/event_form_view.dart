import 'package:fhe_template/core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../controller/event_form_controller.dart';

class EventFormView extends StatefulWidget {
  const EventFormView({Key? key}) : super(key: key);

  Widget build(context, EventFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EventForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () async {
                var title = Input.get("title");
                var description = Input.get("description");

                await FirebaseFirestore.instance.collection("events").add({
                  "product_name": title,
                  "price": description,
                });
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            ExTextField(
              id: "title",
              label: "Title",
            ),
            ExTextArea(
              id: "description",
              label: "Description",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<EventFormView> createState() => EventFormController();
}
