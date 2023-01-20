import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialLoginView extends StatefulWidget {
  const TutorialLoginView({Key? key}) : super(key: key);

  Widget build(context, TutorialLoginController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text("TutorialLogin"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
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
                      value: "demo@gmail.com",
                      onChanged: (value) {},
                    ),
                    QTextField(
                      label: "Password",
                      hint: "Your password",
                      obscure: true,
                      validator: Validator.required,
                      suffixIcon: Icons.password,
                      value: "123456",
                      onChanged: (value) {},
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.login),
                      label: const Text("Login"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Get.to(const TutorialDashboardView());
                      },
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
