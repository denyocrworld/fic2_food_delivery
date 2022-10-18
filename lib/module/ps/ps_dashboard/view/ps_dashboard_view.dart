import 'package:fhe_template/core.dart';
import 'package:fhe_template/shared/widget/textfield/remote_autocomplete.dart';
import 'package:flutter/material.dart';

class PsDashboardView extends StatefulWidget {
  const PsDashboardView({Key? key}) : super(key: key);

  Widget build(context, PsDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PsDashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  AutoCompleteWithRemoteDataSource(
                    value: "",
                    future: (search) async {
                      var response = await Dio().get(
                        "https://dummyjson.com/products/search?q=$search",
                        options: Options(
                          headers: {
                            "Content-Type": "application/json",
                          },
                        ),
                      );
                      Map obj = response.data;
                      return obj["products"]; //List
                    },
                    valueField: "id",
                    displayField: "title",
                    photoField: "thumbnail",
                    onChanged: (value) {
                      print("Your value is $value");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<PsDashboardView> createState() => PsDashboardController();
}
