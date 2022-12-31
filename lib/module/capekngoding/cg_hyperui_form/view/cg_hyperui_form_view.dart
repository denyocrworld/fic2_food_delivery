import 'package:flutter/material.dart';
import 'package:example/core.dart';

class CgHyperuiFormView extends StatefulWidget {
  const CgHyperuiFormView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            QTextField(
                              label: "Name",
                              hint: "Name",
                              validator: Validator.required,
                              value: "John Doe",
                              onChanged: (value) {},
                            ),
                            QNumberField(
                              label: "Price 1",
                              hint: "Your product price's",
                              validator: Validator.required,
                              value: "23000",
                              onChanged: (value) {
                                print("Product price: $value");
                              },
                            ),
                            QNumberField(
                              label: "Price 2",
                              hint: "Your product price's",
                              validator: Validator.required,
                              value: "15000",
                              pattern: "#,##0",
                              locale: "en_US",
                              onChanged: (value) {
                                print("Product price: $value");
                              },
                            ),
                            QNumberField(
                              label: "Price 3",
                              hint: "Your product price's",
                              validator: Validator.required,
                              value: "23200.23",
                              pattern: "#,###.0#",
                              locale: "en_US",
                              onChanged: (value) {
                                print("Product price: $value");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            QTextField(
                              label: "Name",
                              hint: "Name",
                              validator: Validator.required,
                              value: "John Doe",
                              onChanged: (value) {},
                            ),
                            QNumberField(
                              label: "Price",
                              hint: "Your product price's",
                              validator: Validator.required,
                              value: "15000",
                              onChanged: (value) {
                                print("Product price: $value");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
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
  State<CgHyperuiFormView> createState() => CgHyperuiFormController();
}
