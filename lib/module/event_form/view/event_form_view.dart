import 'package:example/core.dart';

import 'package:flutter/material.dart';

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
                var photo = Input.get("photo");
                var title = Input.get("title");
                var description = Input.get("description");
                var startAt = Input.get("start_at");
                var endAt = Input.get("end_at");
                var prizePool = Input.get("prize_pool");

                await FirebaseFirestore.instance.collection("events").add({
                  "photo": photo,
                  "title": title,
                  "description": description,
                  "start_at": startAt,
                  "end_at": endAt,
                  "prize_pool": prizePool,
                });
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(),
                child: TextFormField(
                  initialValue: 'admin@gmail.com',
                  maxLength: 20,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.email,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    helperText: 'Enter your email address',
                  ),
                  onChanged: (value) {},
                ),
              ),
              const ExImagePicker(
                id: "photo",
                label: "Photo",
              ),
              const ExTextField(
                id: "title",
                label: "Title",
              ),
              const ExDatePicker(
                id: "start_at",
                label: "Start At",
              ),
              const ExDatePicker(
                id: "end_at",
                label: "End At",
              ),
              const ExTextArea(
                id: "description",
                label: "Description",
              ),
              const ExTextField(
                id: "prize_pool",
                label: "Prize Pool",
                keyboardType: TextInputType.number,
                value: "0",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EventFormView> createState() => EventFormController();
}
