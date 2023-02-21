import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
Senin
7-Selesai
Basic Pemrograman

Selasa
7-Selesai
Flutter Basic
*/
class StaticButton {
  static Color color = Colors.red;
  static getButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {},
      child: const Text("Save"),
    );
  }
}

class Animal {
  eat() {
    print("Animal lagi makan");
  }
}

class Cat extends Animal {
  @override
  eat() {
    print("Cat lagi makan");
  }
}

class TutorialDemoView extends StatefulWidget {
  const TutorialDemoView({Key? key}) : super(key: key);

  Widget build(context, TutorialDemoController controller) {
    controller.view = this;

//Buatlah sebuah List<Map> products dengan data id,productName,price (integer). Isi dengan 5 produk aplikasi Furniture
    List<Map> products = [
      {'id': 1, 'productName': 'Sofa', 'price': 20000},
      {'id': 2, 'productName': 'Table', 'price': 10000},
      {'id': 3, 'productName': 'Chair', 'price': 5000},
      {'id': 4, 'productName': 'Cupboard', 'price': 15000},
      {'id': 5, 'productName': 'Bed', 'price': 25000}
    ];

    products.sort((a, b) => b["productName"].compareTo(a["productName"]));

    for (var product in products) {
      print(product);
    }
    getRowLabel() {
      return Row(
        children: const [
          Text(
            "WPM",
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
          Expanded(
            child: Text(
              "77",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          "Near Me",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          QTextField(
            label: "Email",
            hint: "Your email",
            validator: Validator.email,
            suffixIcon: Icons.email,
            value: "demo@gmail.com",
            onChanged: (value) {},
          ),
          QImagePicker(
            label: "Photo",
            hint: "Your photo",
            validator: Validator.required,
            value: null,
            onChanged: (value) {},
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {},
            child: const Text("Save"),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<TutorialDemoView> createState() => TutorialDemoController();
}

class RowLabel extends StatefulWidget {
  const RowLabel({Key? key}) : super(key: key);

  @override
  State<RowLabel> createState() => _RowLabelState();
}

class _RowLabelState extends State<RowLabel> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "WPM",
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
        Expanded(
          child: Text(
            "77",
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ),
      ],
    );
  }
}
