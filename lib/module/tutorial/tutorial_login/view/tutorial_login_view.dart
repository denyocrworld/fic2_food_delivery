import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialLoginView extends StatefulWidget {
  const TutorialLoginView({Key? key}) : super(key: key);

  Widget build(context, TutorialLoginController controller) {
    /*
    HTTP Request
      Dokumentasi API
        Postman
        Website
    */
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    QTextField(
                      label: "Email",
                      hint: "Your email",
                      validator: Validator.email,
                      suffixIcon: Icons.email,
                      onChanged: (value) {
                        controller.email = value;
                      },
                    ),
                    QTextField(
                      label: "Password",
                      hint: "Your password",
                      obscure: true,
                      validator: Validator.required,
                      suffixIcon: Icons.password,
                      onChanged: (value) {
                        controller.password = value;
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () => controller.doLogin(),
                      child: const Text("Login"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TutorialLoginView> createState() => TutorialLoginController();
}
