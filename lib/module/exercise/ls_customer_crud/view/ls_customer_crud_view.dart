import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_customer_crud_controller.dart';

class LsCustomerCrudView extends StatefulWidget {
  const LsCustomerCrudView({Key? key}) : super(key: key);

  Widget build(context, LsCustomerCrudController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsCustomerCrud"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<LsCustomerCrudView> createState() => LsCustomerCrudController();
}