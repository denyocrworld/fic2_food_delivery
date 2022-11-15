import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmLoginView extends StatefulWidget {
  const LtfmLoginView({Key? key}) : super(key: key);

  Widget build(context, LtfmLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmLogin"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                id: "email",
                value: "demo@gmail.com",
                label: "Email",
                hint: "Your email",
                onChanged: (value) {},
              ),
              QTextField(
                id: "password",
                value: "123456",
                label: "Password",
                hint: "Your password",
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
    );
  }

  @override
  State<LtfmLoginView> createState() => LtfmLoginController();
}
