/*
list_order_with_tab
item_order
*/

import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class CardTemplateView extends StatefulWidget {
  const CardTemplateView({Key? key}) : super(key: key);

  Widget build(context, CardTemplateController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CardTemplate"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          Text(
                            "2022",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                          Text(
                            "02",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "DEC",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Order #10001",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "johndoe@gmail.com",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            Text(
                              "120",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      const Text(
                        "Processing",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
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
  State<CardTemplateView> createState() => CardTemplateController();
}
