import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialProductDetailView extends StatefulWidget {
  const TutorialProductDetailView({Key? key}) : super(key: key);

  Widget build(context, TutorialProductDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TutorialProductDetail"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const LoginView(),),
                  // );
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const LoginView()),
                  // );
                  Get.offAll(const LoginView());
                },
                child: const Text("Logout"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialProductDetailView> createState() =>
      TutorialProductDetailController();
}
