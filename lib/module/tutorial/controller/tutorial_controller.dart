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