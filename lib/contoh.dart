import 'package:dio/dio.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

//StatelessWidget dan StatefullWidget
class ContohView extends StatefulWidget {
  const ContohView({Key? key}) : super(key: key);

  @override
  State<ContohView> createState() => _ContohViewState();
}

class _ContohViewState extends State<ContohView> {
  //STATE
  List userList = [];
  int counter = 0;

  @override
  void initState() {
    super.initState();
    loadUsers();
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  loadUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    userList = obj["data"];
    print(userList);

    //merefresh halaman
    //merebuild halaman
    //merender ulang halaman
    // setState(() {});

    /*
    State Management
    1. setState

    Observable Variable
    2. ValueNotifier
    3. Stream
    */
  }

  void onReady() {}

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(_) {
    super.didUpdateWidget(_);
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }
  //-----

  //VIEW
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contoh"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "$counter",
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  counter++;
                  print("counter: $counter");
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
