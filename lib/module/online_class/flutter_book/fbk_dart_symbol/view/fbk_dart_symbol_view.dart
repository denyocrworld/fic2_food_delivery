import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartSymbolView extends StatefulWidget {
  const FbkDartSymbolView({Key? key}) : super(key: key);

  bool? exercise1() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena kurang ;
    //Tambahkan titik koma pada bagian kode yang error
    List products = [];
    /*
    products = [
      "GG FILTER 12",
      "JR SUPER 12",
      "GULA LAKU",
    ];
    for (var product in products) {
      print(product)
    }
    */
    return products.isNotEmpty;
  }

  bool? exercise2() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena kurang ,
    //Tambahkan , pada bagian kode yang error
    List products = [];
    /*
    products = [
      "GG FILTER 12"
      "JR SUPER 12"
      "GULA LAKU",
    ];
    for (var product in products) {
      print(product);
    }
    */
    return products.isNotEmpty;
  }

  bool? exercise3() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena kurang }
    //Tambahkan } pada bagian kode yang error
    int qty = 2;
    double price = 25;
    double total = qty * price;
    double discount = 0;

    /*
    if (total >= 50) {
      discount = 0.25;
    else {
      discount = 0.10;
    }
    */

    return discount == 0.25;
  }

  bool? exercise4() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena kurang } dan ;
    //Tambahkan } dan ; pada bagian kode yang error
    int qty = 4;
    double price = 25;
    double total = qty * price;
    double discount = 0;

    /*
    if (total >= 100) {
      discount = 0.35;
     else if (total >= 50) {
      discount = 0.25
    } else {
      discount = 0.10;
    */

    return discount == 0.35;
  }

  bool? exercise5() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena menggunakan {} pada List
    //Seharusnya menggunakan [];
    //Perbaiki bagian yang error

    List productCategories = [];

    /*
    productCategories = {
      "GG FILTER",
      "JR SUPER 12",
      "SUSU DANCOW",
    };
    */
    return productCategories.isNotEmpty;
  }

  bool? exercise6() {
    //Uncomment kode di bawah ini
    //Error-nya disebabkan karena terlalu banyak menggunakan ,
    //Perbaiki bagian yang error

    List productCategories = [];

    /*
    productCategories = [
      "GG FILTER",,
      "JR SUPER 12",
      "SUSU DANCOW",
    ],;,
    */

    return productCategories.isNotEmpty;
  }

  bool? exercise7() {
    //Uncomment kode di bawah ini
    //Perbaiki error dibawah!

    List productCategories = [];
    /*
    if (productCategories.isEmpty {
      productCategories.add("TEH GELAS OT")
    */
    return productCategories.isNotEmpty;
  }

  bool? exercise8() {
    //Uncomment kode di bawah ini
    //Perbaiki error dibawah!

    List customers = [];
    /*
    Map product = [
      "id": 1,
      "product_name": "TEH GELAS OT",
      "price": 25,,
    ];
    customers.add(product);
    */

    return customers.isNotEmpty;
  }

  bool? exercise9() {
    //Uncomment kode di bawah ini
    //Perbaiki error dibawah!

    List arr = [];
    /*
    for (var i = 0; i < 10; i++) {
      String str = "";
      for (var n = 0; n <= i; n++) {
        str += "*",
      
      print(str),
      arr.add(str);
    }
    */
    return arr.isNotEmpty;
  }

  bool? exercise10() {
    //Uncomment kode di bawah ini
    //Perbaiki error dibawah!

    List arr = [];
    /*
    for var i = 0; i < 10; i++) {
      String str = "";
      for (var n = 0;; n <= i; n++) {
        if (n % 2 == 0 {
          str += "~";
        } else {
          str += "*";
        }
      
      print(str);
      arr.add(str);
    }
    */
    return arr.isNotEmpty;
  }

  Widget build(context, FbkDartSymbolController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartSymbol"),
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
              rowLabel(exercise4),
              rowLabel(exercise5),
              rowLabel(exercise6),
              rowLabel(exercise7),
              rowLabel(exercise8),
              rowLabel(exercise9),
              rowLabel(exercise10),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkDartSymbolView> createState() => FbkDartSymbolController();
}
