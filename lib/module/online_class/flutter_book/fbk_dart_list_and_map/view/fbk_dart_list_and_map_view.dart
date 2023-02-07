import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartListAndMapView extends StatefulWidget {
  const FbkDartListAndMapView({Key? key}) : super(key: key);

  bool? exercise1() {
    List products = [];
    //Tambahkan "GG FILTER 12" ke dalam List
    //Gunakan method .add
    return products.isNotEmpty && products[0] == "GG FILTER 12";
  }

  bool? exercise2() {
    List products = [
      "JR SUPER 12",
      "GG FILTER 12",
      "AQUA GELAS 240ML",
    ];
    //Buang GG FILTER 12 dari List
    //Gunakan .removeAt
    return products[0] == "JR SUPER 12" && products[1] == "AQUA GELAS 240ML";
  }

  bool? exercise3() {
    List products = [
      "JR SUPER 12",
      "GG FILTER 12",
      "AQUA GELAS 240ML",
    ];
    //Buang GG FILTER 12 dari List
    //Gunakan .remove
    //Bukan .removeAt !!!
    return products[0] == "JR SUPER 12" && products[1] == "AQUA GELAS 240ML";
  }

  Widget build(context, FbkDartListAndMapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartListAndMap"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              rowLabel(exercise1),
              rowLabel(exercise2),
              rowLabel(exercise3),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkDartListAndMapView> createState() => FbkDartListAndMapController();
}
