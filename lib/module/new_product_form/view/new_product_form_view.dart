import 'package:flutter/material.dart';
import '../controller/new_product_form_controller.dart';

class NewProductFormView extends StatefulWidget {
  const NewProductFormView({Key? key}) : super(key: key);

  Widget build(context, NewProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("NewProductForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<NewProductFormView> createState() => NewProductFormController();
}