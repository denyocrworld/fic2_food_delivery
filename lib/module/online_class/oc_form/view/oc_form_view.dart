import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
Reuseable Widget*/
class OcFormView extends StatefulWidget {
  const OcFormView({Key? key}) : super(key: key);

  Widget build(context, OcFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
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
                        label: "First Name",
                        hint: "First Name",
                        validator: Validator.required,
                        value: "John Doe",
                        onChanged: (value) {},
                      ),
                      QTextField(
                        label: "Last Name",
                        hint: "Last Name",
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
                      QMemoField(
                        label: "Address",
                        hint: "Your addresses",
                        validator: Validator.required,
                        value: "Kamboja street 16, Bogor, West Java, Indonesia",
                        onChanged: (value) {},
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.save),
                        label: const Text("Save"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
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
                      ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label: const Text("Login"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () {},
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
  State<OcFormView> createState() => OcFormController();
}
