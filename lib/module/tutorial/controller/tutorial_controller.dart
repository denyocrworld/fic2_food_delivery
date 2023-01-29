import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialController extends State<TutorialView> implements MvcController {
  static late TutorialController instance;
  late TutorialView view;

  @override
  void initState() {
    instance = this;
    getProducts();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List products = [];
  doGenerate() async {
    for (var i = 0; i < 5; i++) {
      var response = await Dio().post(
        "http://localhost:8080/deny/api/products",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "product_name": "Product #$i",
          "price": 15.25,
        },
      );
    }
    await getProducts();
  }

  getProducts() async {
    var response = await Dio().get(
      "http://localhost:8080/deny/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    products = obj["data"];
    setState(() {});
  }

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

//Buatlah sebuah List<Map> di Flutter berisi data name, message, is_me, isi dengan 10 data dummy
  List<Map<String, dynamic>> messages = [
    {'name': 'John', 'message': 'Hello, how are you?', 'is_me': false},
    {'name': 'Jane', 'message': 'I am doing great, thank you!', 'is_me': true},
    {'name': 'John', 'message': 'That is great to hear!', 'is_me': false},
    {'name': 'Jane', 'message': 'What about you?', 'is_me': true},
    {'name': 'John', 'message': 'I am doing well too!', 'is_me': false},
    {'name': 'Jane', 'message': 'That is great to hear!', 'is_me': true},
    {'name': 'John', 'message': 'What are you up to?', 'is_me': false},
    {
      'name': 'Jane',
      'message': 'Just hanging out with friends!',
      'is_me': true
    },
    {'name': 'John', 'message': 'That sounds like fun!', 'is_me': false},
    {'name': 'Jane', 'message': 'It sure is!', 'is_me': true},
  ];

//Buatlah List<String> categories, yang berisi 10 category yang biasa digunakan i aplikasi Ecommerce
  List<String> categories = [
    'Fashion',
    'Elektronik',
    'Kesehatan & Kecantikan',
    'Olahraga',
    'Rumah & Taman',
    'Mainan & Hobi',
    'Makanan & Minuman',
    'Komputer & Aksesoris',
    'Kendaraan & Aksesoris',
    'Perlengkapan Bayi'
  ];
}
/*
Backend
---
Bahasa Pemrograman = PHP | GOLANG | PYTHON
Bikin API
Bikin Dokumentasi
Bikin Testing
Deploy utk mode produksi

Framework:
ExpressJS
Laravel
Beego, GIN
Djanggo


Front End
---
Bikin UI
Consume API

Full Stack
--=

*/