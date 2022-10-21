import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/pos_view.dart';

class PosController extends State<PosView> implements MvcController {
  static late PosController instance;
  late PosView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    loadProducts();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List products = [];
  loadProducts() async {
    var snapshot =
        await FirebaseFirestore.instance.collection("pos_products").get();

    for (var i = 0; i < snapshot.docs.length; i++) {
      Map<String, dynamic> item = snapshot.docs[i].data();
      item["id"] = snapshot.docs[i].id;
      item["qty"] = 0;
      products.add(item);
    }
    update();
  }

  double get total {
    var rowsTotal = 0.0;
    for (var i = 0; i < products.length; i++) {
      var item = products[i];
      double rowTotal = double.parse(item["qty"].toString()) *
          double.parse(item["price"].toString());
      rowsTotal += rowTotal;
    }
    return rowsTotal;
  }
}
