import 'dart:math';

import 'package:example/module/product_detail/product_detail_view.dart';
import 'package:flutter/material.dart';

//state management
// u/ memanage state

// 3 cara meneruskan value ke halaman lain
// List, Model, int, String
// 1. melalui constructor
// 2. menggunakan DI (Dependency Injection)
//    untuk menyimpan singleton
// 3. lewat context

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  State<ProductListView> createState() => ProductListViewState();
}

class ProductListViewState extends State<ProductListView> {
  static late ProductListViewState instance;
  List productList = [];

  @override
  void initState() {
    super.initState();
    instance = this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Add"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                productList.add({
                  "product_name": "ODOL CIPTADENT ${Random().nextInt(100)}",
                  "price": Random().nextInt(100),
                });
                setState(() {});
              },
            ),
          ),
        ],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              var item = productList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailView(
                        item: item,
                      ),
                    ),
                  );
                },
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      backgroundImage: const NetworkImage(
                        "https://i.ibb.co/QrTHd59/woman.jpg",
                      ),
                    ),
                    title: Text(item["product_name"]),
                    subtitle: Text("${item["price"]}"),
                  ),
                ),
              );
            },
          )),
    );
  }
}
