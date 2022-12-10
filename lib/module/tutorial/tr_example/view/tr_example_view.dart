import 'package:example/core.dart';
import 'package:flutter/material.dart';

//Bahasa: DART
//Framework: Flutter
//IDE/Code Editor: Vscode
// ANDROID, IOS, Web, Desktop (Linux, Macos dan Windows)
//--------------
//Container
//- Basic
//- Best Practices
//----------------

class TrExampleView extends StatefulWidget {
  const TrExampleView({Key? key}) : super(key: key);

  Widget build(context, TrExampleController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contoh"),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              QTextField(
                label: "Name",
                hint: "Name",
                validator: Validator.required,
                value: "John Doe",
                onChanged: (value) {},
              ),
              TextFormField(
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
              SizedBox(
                height: 100.0,
                child: Row(
                  children: [
                    Container(
                      width: 100.0,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Container(
                    height: 100.0,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100.0,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100.0,
                    color: Colors.purple,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrExampleView> createState() => TrExampleController();
}
