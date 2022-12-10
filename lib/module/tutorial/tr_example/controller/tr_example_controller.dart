import 'package:example/core.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';

class TrExampleController extends State<TrExampleView>
    implements MvcController {
  static late TrExampleController instance;
  late TrExampleView view;
  Faker faker = Faker.instance;
  int selectedIndex = 0;
  @override
  void initState() {
    instance = this;
    getUsers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List users = [];
  getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    users = obj["data"];
    setState(() {});
  }
}
